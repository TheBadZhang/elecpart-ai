# 基于 HK32F030MF4P6 的多段录音机设计方案

> **文档版本**：v2.0（根据数据手册 HK32F030M_Datasheet_Rev1.0.12 重新设计）
> **设计日期**：2026-06-23
> **⚠️ 重要提示**：本方案基于实际数据手册参数，与数据库旧版参数有重大差异，详见下文。

---

## 0. ⚠️ 数据手册 vs 数据库差异声明

经查阅实际数据手册 `datasheets/HK32F030MF4P6.PDF`，发现数据库中原有参数**多处错误**（已修正）：

| 参数 | 数据库旧值 (错误) | 数据手册实际值 |
|---|---|---|
| **封装** | LQFP-48 | **TSSOP-20** |
| **封装尺寸** | 7×7mm | **6.5×4.4mm** |
| **CPU频率** | 48MHz | **32MHz** |
| **内核** | Cortex-M0+ | **Cortex-M0** |
| **Flash** | 64KB | **16KB** |
| **SRAM** | 8KB | **2KB** |
| **EEPROM** | — | **448 Bytes（内置）** |
| **UART** | 2×UART | **1×USART** |
| **ADC通道** | 10ch | **5ch（有效精度8bit）** |
| **定时器** | 2×Timer | **1×Adv Timer + 1×Gen Timer + 1×Basic Timer** |
| **I2S支持** | 未提及 | **✅ SPI复用I2S，支持4种音频标准** |
| **IOMUX** | 未提及 | **✅ 引脚功能多重映射** |
| **GPIO数量** | 隐含多引脚 | **16个** |
| **供电电压** | 2V~3.6V | **1.8V~3.6V** |

---

## 1. 系统概述

### 1.1 可行性评估

| 维度 | 评估 | 说明 |
|---|---|---|
| 💾 **Flash(16KB)** | ⚠️ 紧张 | 固件~8KB，剩余~8KB不够存语音 |
| 🧠 **SRAM(2KB)** | ⚠️ 紧张 | 音频缓冲~1.5KB，需精打细算 |
| 🔌 **GPIO(16个)** | ⚠️ 刚好够 | 减去SWD调试，可用14个 |
| 🎤 **ADC(有效8bit)** | ✅ 够用 | 语音质量8bit已可接受 |
| 🔊 **PWM(高级定时器)** | ✅ 可用 | TIM1带互补/死区输出 |
| 💽 **外部存储** | ✅ 硬件SPI | 通过IOMUX复用，SCK→PD3, MISO→PC4, MOSI→PC6, CS→PD4(GPIO) |
| 🎵 **I2S支持** | ⚠️ 引脚占用 | SPI与I2S共用硬件外设，但引脚已用于SPI驱动Flash，如需I2S需重新分配 |

**结论**：HK32F030MF4P6 可以做录音机，**硬件SPI可用**，性能绰绰有余。

### 1.2 功能需求

| 功能 | 描述 |
|---|---|
| 录音 | 板载驻极体MIC → 内部ADC(8kHz/8bit) → 硬件SPI写入W25Q64 |
| 回放 | W25Q64 → 硬件SPI读取 → PWM + RC滤波 → 功放 → 喇叭 |
| 多段录音 | 支持多段（Flash分区管理） |
| 按键控制 | REC键(开始/停止)、PLAY键(播放/停止) |
| 状态指示 | 红色LED(录音中)、绿色LED(播放中) |

---

## 2. 系统框图

```
                    ┌───────────────────────────────────────┐
                    │           HK32F030MF4P6                │
                    │          (TSSOP-20)                    │
                    │                                       │
 USB 5V─►LDO──►3.3V│  ┌─────────────────────────────────┐  │
                    │  │ Cortex-M0 @ 32MHz               │  │
 MIC──►运放──►ADC───┤  │ 16KB Flash / 2KB SRAM          │  │
 (PD6/AIN1)         │  │ 448B EEPROM                    │  │
                    │  └─────────────────────────────────┘  │
                    │          │                            │
 REC键+CS──►PD4────┤          │ 硬件SPI1(IOMUX)            │
                    │          ▼                            │
 PLAY键─►GPIO(PD1)──┤  ┌──────────────┐                   │
                    │  │ PD3=SCK(AF2) │                   │
 REC LED─►GPIO(PD2)─┤  │ PC4=MISO(AF2)├────► W25Q64JVSSIQ │
                    │  │ PC6=MOSI(AF2)│      SOIC-8/8MB    │
 PLAY LED►GPIO(PC5)─┤  │ PD4=CS(GPIO)│                   │
                    │  └──────────────┘                   │
                    │          │                            │
 PWM──►PA1──►RC滤波──►PAM8403──►喇叭(8Ω)                   │
 (TIM1_CH1N)                                              │
                    │                                       │
 SWD──►PD5, PB5────┤ 调试接口                              │
                    └───────────────────────────────────────┘
```

---

## 3. 硬件详细设计

### 3.1 引脚分配（基于 TSSOP-20 实际封装）

```
TSSOP-20 顶视图:

           PD4(1)     ┌────┐     (20) PD3/SPI1_SCK(AF2)
    PD5/SWDIO(2)     │    │     (19) PD2/REC_LED
     PD6/AIN1(3)     │    │     (18) PD1/PLAY_KEY
          NRST(4)    │HK │     (17) PC7/(空闲)
    PA1/PWM_OUT(5)   │32F│     (16) PC6/SPI1_MOSI(AF2)
           PA2(6)    │030│     (15) PC5/PLAY_LED
         VSS(7)      │M  │     (14) PC4/SPI1_MISO(AF2)
        VCAP(8)      │   │     (13) PC3/(空闲)
         VDD(9)      │   │     (12) PB4/(空闲)
          PA3(10)    │   │     (11) PB5/SWCLK
                     └────┘
```

### 3.2 引脚功能分配表

| 引脚# | 引脚名 | 功能 | 方向 | 说明 |
|---|---|---|---|---|
| 1 | **PD4** | **GPIO_Input+CS** | IN/OUT | **REC按键**（按下低电平）+ **SPI_CS**（GPIO控制） |
| 2 | PD5/SWDIO | SWDIO | BIO | 调试数据线（SWD） |
| 3 | **PD6/AIN1** | **ADC_IN1** | IN | **麦克风模拟输入** |
| 4 | NRST | NRST | IN | 复位（外部上拉） |
| 5 | **PA1** | **TIM1_CH1N** | OUT | **PWM音频输出**（经RC滤波→PAM8403） |
| 6 | PA2 | GPIO | — | 空闲，可扩展 |
| 7 | VSS | GND | PWR | 地 |
| 8 | VCAP | NC | — | 悬空不接 |
| 9 | VDD | 3.3V | PWR | 电源 |
| 10 | PA3 | GPIO | — | 空闲，可扩展 |
| 11 | PB5/SWCLK | SWCLK | IN | 调试时钟（SWD） |
| 12 | PB4 | GPIO | — | 空闲，可扩展 |
| 13 | PC3 | GPIO | — | 空闲，可扩展 |
| 14 | **PC4** | **SPI1_MISO(AF2)** | IN | **硬件SPI MISO**（接Flash DO） |
| 15 | **PC5** | **GPIO_Output** | OUT | **PLAY_LED（绿色）**（AF0=GPIO，不用I2C） |
| 16 | **PC6** | **SPI1_MOSI(AF2)** | OUT | **硬件SPI MOSI**（接Flash DI） |
| 17 | PC7 | GPIO | — | 空闲，可扩展 |
| 18 | **PD1** | **GPIO_Input** | IN | **PLAY按键**（按下低电平，内部上拉） |
| 19 | **PD2** | **GPIO_Output** | OUT | **REC_LED（红色）** |
| 20 | **PD3** | **SPI1_SCK(AF2)** | OUT | **硬件SPI SCK**（接Flash CLK） |

> **关键说明**：SPI1通过IOMUX复用到 **SCK→PD3(AF2)、MISO→PC4(AF2)、MOSI→PC6(AF2)**，CS由PD4 GPIO控制。与STM32不同的是，HK32F030M的AF通过SYSCFG寄存器配置，非GPIO_AFR寄存器。

### 3.3 核心器件选型

| 器件 | 型号 | 理由 |
|---|---|---|
| **主控MCU** | HK32F030MF4P6 | TSSOP-20, 32MHz, ADC+PWM, ¥1~1.5 |
| **SPI Flash** | W25Q64JVSSIQ (8MB) | SOIC-8，硬件SPI(IOMUX复用)驱动，~17min@8kHz |
| **音频功放** | PAM8403 | SOP-16, 2×2W@5V/8Ω, Class-D高效 |
| **LDO** | ME6211C33M6G | 3.3V/600mA, SOT-23-6 |
| **运放** | LMV321 | SOT-23-5, 轨到轨, MIC前置放大 |
| **驻极体MIC** | 通用ECM | Φ6×5mm, 灵敏度-38dB |

### 3.4 麦克风输入电路

```
          VCC(3.3V)
             │
             R1(2.2kΩ)
             │
MIC_IN────┬─┴──C1(0.1μF)────┬──R2(100kΩ)──┐
驻极体MIC  │                 │             │
          │              R3(10kΩ)      LMV321×6
         GND                │          ┌──┴──┐
                           GND         │×6倍 │──C2(0.1μF)──PD6/AIN1
                                        └──┬──┘
                                           │
                                          GND
```

### 3.5 PWM音频输出电路

```
PA1(TIM1_CH1N)──PWM──┬──R1(1kΩ)──┬──R2(2kΩ)──┬──C2(10nF)──┐
                      │            │            │            │
                     GND          GND          GND          │
                   二阶RC低通(f_c≈8kHz)                      │
                    ┌────────────────────────────────────────┘
                    │
              C3(1μF)──R3(10kΩ)──►PAM8403 IN+►喇叭(8Ω/1W)
```

- TIM1_CH1N: PWM @ ~62.5kHz (32MHz/1/512), 8bit分辨率

### 3.6 硬件SPI Flash电路

```
                    W25Q64JVSSIQ (SOIC-8)
                   ┌─────────────────────────┐
  PD4(CS_GPIO) ────┤1  CS         VCC  8  ├── VCC(3.3V)
  PC4/SPI1_MISO◄────┤2  DO         HOLD 7  ├── VCC(3.3V)
                    │3  WP         CLK  6  │
  PC6/SPI1_MOSI────┤4  GND       DI   5  ├── PD3/SPI1_SCK
                    └─────────────────────────┘
                           │
                          GND
```

- **硬件SPI1**通过IOMUX映射：SCK→PD3(AF2), MISO→PC4(AF2), MOSI→PC6(AF2)
- CS由PD4 GPIO控制（同时兼REC按键检测）
- SPI速率配置为4~8MHz（SPI1_BR=8分频或4分频）
- 8KB/s音频数据 → 中断处理，CPU占用可忽略

### 3.7 电源系统

```
USB 5V ──► ME6211C33M6G ──► 3.3V ──► MCU, SPI Flash, 运放
              │                      │
              │              C1(10μF) C2(0.1μF)
              │                      │
             GND                    GND

USB 5V ────────────────► 直接给 PAM8403 PVDD
```

---

## 4. 软件设计

### 4.1 SRAM 内存规划（2KB 精细分配）

| 用途 | 大小 | 说明 |
|---|---|---|
| 系统堆栈 | 256B | 中断嵌套/函数调用 |
| **录音双缓冲** | **512B** | 256B×2 Ping-Pong |
| **播放缓冲** | **256B** | 128B×2 |
| SPI缓冲 | 256B | Flash页编程缓存 |
| 系统变量/状态 | 256B | 状态机/定时器/索引 |
| 录音索引表缓存 | 256B | Flash索引条目缓存 |
| **剩余** | **~256B** | 备用 |
| **总计** | **2KB** | |

### 4.2 软件状态机

```
      上电初始化
           │
           ▼
    ┌──────────────┐
    │    IDLE      │◄────────────────┐
    │ 绿灯慢闪1Hz  │                 │
    └──┬───────┬───┘                 │
       │       │                     │
    REC键    PLAY键                  │
       │       │                     │
       ▼       ▼                     │
    ┌────┐  ┌───────┐               │
    │REC │  │ PLAY  │──播完自动───────┘
    │ORD │  │ ING   │ 或PLAY键停止
    │ING │  │绿灯亮 │
    │红灯│  └───────┘
    │亮  │
    └──┬─┘
       │
    REC键(再次)
       │
       ▼
    回到IDLE
```

### 4.3 录音流程

```
REC键按下 → REC_LED(PD2)亮
  ├─ EEPROM分配录音段ID
  ├─ TIM6(8kHz)→ADC触发→DMA→Buffer_A
  ├─ Buffer_A满→切Buffer_B→硬件SPI写Flash
  └─ ...
REC键再次→停ADC→刷写剩余→更新索引→REC_LED灭
```

### 4.4 播放流程

```
PLAY键按下 → PLAY_LED(PC5)亮
  ├─ 硬件SPI读Flash→播放缓冲
  ├─ TIM1 PWM输出(CCR=样值)
  └─ 播完/再按PLAY→停止→PLAY_LED灭
```

Flash存储管理和代码与 v1.0 类似，此处省略。

---

## 5. BOM 物料清单

| 序号 | 器件 | 型号 | 封装 | 数量 | 单价 |
|---|---|---|---|---|---|
| 1 | **主控MCU** | HK32F030MF4P6 | TSSOP-20 | 1 | ¥1.0~1.5 |
| 2 | **SPI Flash** | W25Q64JVSSIQ | SOIC-8 | 1 | ¥2.5~3.5 |
| 3 | **音频功放** | PAM8403 | SOP-16 | 1 | ¥1.0~1.5 |
| 4 | **LDO** | ME6211C33M6G | SOT-23-6 | 1 | ¥0.2~0.3 |
| 5 | **运放** | LMV321 | SOT-23-5 | 1 | ¥0.2~0.3 |
| 6 | **驻极体MIC** | ECM Φ6×5mm | DIP | 1 | ¥0.2~0.3 |
| 7 | **喇叭** | 8Ω/1W | — | 1 | ¥1.0~2.0 |
| 8 | **按键** | 6×6×5mm 轻触 | DIP | 2 | ¥0.1 |
| 9 | **LED** | 红/绿 0603 | 0603 | 2 | ¥0.05 |
| 10 | **电阻/电容** | 若干 | 0603 | — | ¥0.5 |
| 11 | **USB座** | Micro USB | SMD | 1 | ¥0.3 |
| | **合计** | | | | **~¥7~10** |

---

## 6. 关键限制

| 限制 | 原因 | 影响 |
|---|---|---|
| 音质有限 | ADC有效8bit + PWM 8bit | 电话级语音，够用 |
| SRAM缓冲小 | 仅2KB，双缓冲256B×2 | 需频繁写Flash |
| 无I2S输出 | I2S与SPI复用，引脚已分配Flash | 只能用PWM播放 |
| GPIO全部用完 | 16个GPIO已分配14个 | 仅余2个扩展 |

### 升级建议

| 方向 | 方案 | 增加成本 |
|---|---|---|
| **换MCU** | GD32F350G8U6TR (QFN-28, 108MHz, 64KB/8KB, 独立I2S) | +¥3 |
| I2S MEMS麦克风 | INMP441 (I2S, 24bit) | +¥3 |
| I2S功放 | MAX98357A (I2S输入，无滤波) | +¥5 |
| 改用软件I2S | 释放SPI给I2S，Flash改用SDIO/或换MCU | — |
| OLED显示 | SSD1306 I²C | +¥8 |

---

## 7. 与数据库交叉引用

| 器件 | 数据库章节 | 说明 |
|---|---|---|
| HK32F030MF4P6 | §9.4 PY32/HC32 | ⚠️ 已根据数据手册修正参数 |
| W25Q64JVSSIQ | §7 存储器件 | 8MB SPI Flash |
| PAM8403 | §11 音频 | Class-D功放 |
| ME6211C33M6G | §4.3 LDO | 3.3V/600mA |
| LMV321 | — | 未收录（轨到轨运放） |

---

> **更新记录**
> - **v2.1 (2026-06-23)**: ⚡ 修复SPI引脚分配，使用硬件SPI(IOMUX映射)
>   - SPI1_SCK→PD3, SPI1_MISO→PC4, SPI1_MOSI→PC6
>   - REC_LED→PD2, PLAY_LED→PC5, PLAY键→PD1
>   - CS由PD4 GPIO控制，可兼做REC按键
> - v2.0 (2026-06-23): 根据HK32F030M数据手册Rev1.0.12全面修正
> - v1.0: 初始设计（基于数据库错误参数，已废弃）
