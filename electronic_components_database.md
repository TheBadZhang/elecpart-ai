# 电子元器件参数数据库

> **使用说明**：本文档收录了项目中使用的各类电子元器件的关键参数。
> 如需查询某类元件（如"3.3V LDO"），请使用 Ctrl+F 搜索关键词（电压/封装/类型）。
> 如需添加新元器件，请参照本文档格式，在对应分类的表格中新增一行。

---

## 目录

1. [实时时钟 (RTC)](#1-实时时钟-rtc)
2. [传感器 (加速度计/磁力计/温湿度/麦克风)](#2-传感器)
3. [USB接口芯片 (HUB/转串口/读卡器/网卡)](#3-usb接口芯片)
4. [电源管理芯片 (PMIC/DC-DC/LDO/电源开关)](#4-电源管理芯片)
   - [4.2 降压 (Buck)](#42-降压-buck)
   - [4.3 升压 (Boost)](#43-升压-boost)
   - [4.4 升降压 (Buck-Boost)](#44-升降压-buck-boost)
5. [MOSFET功率管与栅极驱动器](#5-mosfet功率管与栅极驱动器)
6. [逻辑器件](#6-逻辑器件)
7. [存储器件](#7-存储器件)
8. [LED驱动](#8-led驱动)
9. [微控制器 (MCU)](#9-微控制器-mcu)
10. [电机驱动](#10-电机驱动)
11. [音频 (放大器/DAC/ADC/CODEC/语音芯片)](#11-音频)
12. [电池管理/充电芯片](#12-电池管理充电芯片)
13. [其他器件 (二极管/传感器接口/电源监控/PD控制器等)](#13-其他器件)
14. [🔍 如何索引和添加新元器件](#14-如何索引和添加新元器件)

---

## 1. 实时时钟 (RTC)

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| PCF85063ATL | NXP | HXSON-10 | 2.6×2.6×0.5 | 0.9V~5.5V | I²C 400kHz, 典型电流0.27μA, 32.768kHz石英晶体, 可编程偏移校准 | 便携设备、电池供电系统、RTC备用时钟 |
| PCF85063TP | NXP | HWSON-8 | 2×3×0.75 | 0.9V~5.5V | I²C 400kHz, 典型电流0.22μA, 集成负载电容可选7pF/12.5pF | 数码相机、打印机、移动设备、电池供电设备 |

---

## 2. 传感器

### 2.1 加速度计

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| QMA6100P | QST(矽睿) | LGA-12 | 2×2×0.95 | 1.71V~3.6V | 三轴±2/±4/±8/±16/±32g, 14bit ADC, I²C/SPI, 内置FIFO, 待机0.5μA | 可穿戴设备、TWS耳机、IoT、步数计、屏幕旋转 |
| LIS2DW12TR | STMicro | LGA-12 | 2×2×0.7 | 1.62V~3.6V | 三轴±2/±4/±8/±16g, 16bit, I²C/SPI, 省电模式50nA, 内置FIFO, 嵌入式温度传感器 | 可穿戴设备、手势识别、便携医疗设备 |
| LIS2DH12TR | STMicro | LGA-12 | 2×2×1.0 | 1.71V~3.6V | 三轴±2/±4/±8/±16g, 12bit, I²C/SPI, 超低功耗2μA, 内置FIFO, 6D/4D方向检测, 睡眠唤醒功能 | 便携设备、电池供电传感器、IoT、运动检测 |

### 2.2 磁力计

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| QMC6308 | QST(矽睿) | WLCSP | 0.8×0.8×0.5 | 1.65V~1.95V | 三轴AMR磁力计, ±30G, 16bit ADC, I²C, 输出速率最高1.5kHz, 功耗15μA | 智能手机、智能手表、电子罗盘、步行导航 |
| QMC58CCL | QST(矽睿) | QFN-10 | 2×2×0.9 | 1.8V~3.6V | 三轴AMR磁力计, ±30G, 16bit ADC, I²C, 内置温度补偿, 自检诊断 | 电子罗盘、导航系统、无人机方向指示 |

### 2.3 温湿度传感器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| SHT40 | Sensirion | DFN | 1.5×1.5×0.5 | 1.08V~3.6V | 湿度精度±1.8%RH, 温度精度±0.2°C, I²C, 平均电流0.4μA | 环境监测、智能家居、IoT传感器节点 |

### 2.4 麦克风

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| INMP441ACEZ-R7 | TDK | LGA-6 | 4.72×3.76×1.0 | — | 数字MEMS麦克风, I2S输出, 24bit, 61dB SNR, -26dBFS灵敏度, 60Hz~15kHz, 1.4mA, 全向 | 电话会议、笔记本、平板、语音识别 |
| ICS43434 | TDK(InvenSense) | LGA-6 | 3.5×2.65×0.98 | 1.62V~3.63V | 数字MEMS麦克风, I²S输出, 24bit, 65dB SNR, -26dBFS灵敏度, 60Hz~20kHz, 120dB AOP, 全向 | 语音识别、远场拾音、智能音箱、会议系统 |
| IM68A130 | Infineon | LGA-5 | 3.5×2.65×0.98 | 1.6V~3.6V | 模拟MEMS麦克风, 64dB SNR, 120dB AOP, 全向, -38dBV灵敏度@1kHz, 低功耗285μA, 60Hz~20kHz | 语音识别、智能音箱、会议系统、录音笔 |
| ZTS6216 | ZillTek(台灣晶警) | LGA-4 | 2.75×1.85×1.00 | 1.5V~3.6V | 模拟MEMS麦克风(顶孔), 65dB SNR, 125dB AOP, -38dBV灵敏度, 全向, 120μA低功耗, EMI滤波, 扁平频率响应 | 手机、智能手机、PDA、数码摄像机、便携录音 |

### 2.5 共模扼流圈/EMI滤波

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 关键参数 | 适用场景 |
|---|---|---|---|---|---|
| ACT45B-510-2P-TL003 | TDK | 贴片 | 4.5×3.2×2.8 | 共模电感51μH@100kHz, 10MHz阻抗2.8kΩ, 200mA, 50V, AEC-Q200车规 | CAN/LIN总线EMI抑制、车载ECU、工业通信 |
| ECMF02-2AMX6 | STMicro | QFN-6 | 1.45×1.0 | USB2.0/HDMI EMI共模滤波器, 双通道, 集成ESD保护, 6kV HBM | USB2.0接口EMI抑制、高速信号线滤波 |

### 2.6 数字温度传感器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TMP117AIDRVR | TI | WSON-6 (DRV) | 2×2 | 1.8V~5.5V | 精度±0.1°C(30~42°C)/±0.2°C(-55~150°C), I²C/SMBus, 16bit, 5μA, NIST校准, 48bit EEPROM, 4地址 | 医疗设备、替代PT100/PT1000 RTD、环境监测 |

### 2.7 气压传感器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| BMP280 | Bosch Sensortec | LGA-8 | 3×3×0.93 | 1.71V~3.6V | 气压300~1100hPa, ±1hPa精度, 20bit压力/16bit温度, I²C/SPI, 2.5μA | 气象站、无人机高度计、可穿戴设备 |

### 2.8 惯性测量单元(IMU)

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| QMI8658A | QST(矽睿) | LGA-14 | 2.5×3.0×0.83 | 1.71V~3.6V | 6轴IMU(3轴加速度计+3轴陀螺仪), 加速度±2/±4/±8/±16g, 陀螺仪±32/±64/±128/±256/±512/±1024/±2048dps, 16bit ADC, I²C/SPI, 内置FIFO(256级), 低功耗 | 可穿戴设备(步数/跌倒检测)、AR/VR、TWS耳机(头部追踪)、机器人姿态检测 |

---

## 3. USB接口芯片

### 3.1 USB HUB控制器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| CH338F | WCH(沁恒) | QFN-32 | 4×4 | 3.3V | 7端口USB2.0 HUB, 支持MTT/STT, 480Mbps, 部分型号支持PD 100W快充 | 工控机主板、多USB扩展、带PD快充的设备 |
| CH334P | WCH(沁恒) | QFN-16 | 3×3 | 3.3V | 4端口USB2.0 HUB, 支持MTT/STT, 480Mbps, 静态电流0.4mA | 嵌入式系统、打印机、小型USB扩展坞 |
| CH335F | WCH(沁恒) | QFN-28 | 4×4 | 3.3V/5V | 4端口USB2.0 HUB, 支持MTT(4×TT并发)/STT, 480Mbps, 工作电流85mA, 静态0.12mA, 支持I²C配置EEPROM, 支持BC1.2/CDP充电协议, 6kV ESD, 1个下行端口支持USB3.0 SuperSpeed直通 | 工控机主板、多USB扩展坞、需MTT高性能带宽场景 |
| VL822Q7 | VIA Labs | BGA | — | 3.3V/5V | USB3.1 Gen1 + USB2.0 HUB, 多下游端口, 嵌入式MCU, 集成PHY, 支持BC1.2充电 | 高性能USB扩展坞、笔记本扩展、多端口USB HUB |
| VL160 | VIA Labs | BGA | — | 3.3V/5V | USB2.0 HUB控制器, 480Mbps, 支持MTT, 集成PHY, 低功耗 | USB2.0多端口扩展、工业USB HUB、嵌入式USB扩展 |

### 3.2 USB转串口

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| CH343P | WCH(沁恒) | QFN-16 | 3×3 | VDD5:5V/3.3V, VIO:1.8V~5V | USB2.0全速, 波特率50bps~6Mbps, 内置EEPROM, 支持RS485/RS232, 支持CTS/RTS硬件流控 | USB转串口、MCU程序下载、工业串口通信 |
| CH340E | WCH(沁恒) | MSOP-10 | 3×3 | 5V/3.3V | USB转串口芯片, USB2.0全速, 波特率50bps~2Mbps, 内置时钟(无需晶振), RTS/DTR/DCD/RI/DSR/CTS MODEM信号 | USB转串口、MCU下载调试、工业串口通信 |
| CH342F | WCH(沁恒) | QFN-24 | 4×4×0.75 | 5V/3.3V(VBUS), 1.8V~5V(VIO) | USB2.0全速, 双硬件全双工UART, 独立收发缓冲区, 波特率50bps~3Mbps, CTS/RTS硬件流控, RS485方向控制, 内置EEPROM(可配VID/PID), 内置时钟(无需晶振) | USB转双串口、MCU调试接口、工业串口通信、多串口扩展 |

### 3.3 USB信号开关/多路复用器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TS3USB221RSER | TI | UQFN-10 (RSE) | 2.6×1.8 | 2.3V~3.6V | USB2.0 1:2 MUX/DEMUX, 480Mbps, RON=6Ω, 高带宽1GHz, 低功耗30μA, ESD>2000V HBM | USB接口切换、手机、数码相机、带Hub的笔记本 |

### 3.4 蓝牙转串口

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| CH9141 | WCH(沁恒) | QFN-28 | 4×4×0.75 | 2.5V~3.3V | BLE4.2蓝牙串口透传, 支持广播/主机/从机模式, UART最高1Mbps, AT指令配置, 12位ADC, 通用GPIO+同步GPIO, 发射功率8档可调, 传输距离100m, 睡眠0.3μA | 蓝牙串口透传、无线数据采集、IoT蓝牙通信、工业设备无线调试 |
| CH9141K | WCH(沁恒) | ESSOP-10 | 4.9×3.3 | 2.5V~3.3V | 串口蓝牙透传芯片(CH9141精简封装版), 1Mbps数据速率, -20dBm输出功率, 支持BLE, UART接口 | 蓝牙串口透传、无线串口替代、IoT蓝牙通信 |
| CH347F | WCH(沁恒) | QFN-28 | 4×4 | 3.3V/2.5V/1.8V | 高速USB转接芯片, 支持异步串口/I²C/SPI/JTAG, SPI达60MHz, I²C达1MHz | USB调试工具、编程器、多协议转接 |

### 3.5 USB读卡器控制器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| GL3224 | Genesys Logic(创惟) | QFN-48 | 7×7 | 5V/3.3V | USB3.0双/单LUN读卡器控制器, 支持SD/SDHC/SDXC/MMC/MS, UHS-I, SDR104, 集成5V→3.3V/3.3V→1.2V LDO | USB3.0多合一读卡器、SD卡读卡器 |
| GL823K | Genesys Logic(创惟) | SSOP-16 | 5.3×6.2 | 5V/3.3V | USB2.0读卡器控制器, 增强型C51内核48M/96M, 支持SD3.0/SDR104/HS100, 集成LDO, 免晶振 | USB2.0单/多卡读卡器、USB Hub读卡适配器 |

### 3.6 USB网卡芯片

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| CH397A | WCH(沁恒) | QFN-24 | 4×4 | 3.3V | USB2.1网卡芯片, 内置RISC-V处理器, 10M/100M以太网MAC+PHY, IEEE802.3az | USB扩展以太网、台式机/笔记本有线网卡 |

---

## 4. 电源管理芯片

### 4.1 多路DC-DC PMIC

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 输入电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| EA3059 | Everanalog(申风) | QFN-24 | 4×4 | 2.7V~5.5V | 4路同步降压, 每路2A持续/4A峰值, 1.5MHz, 效率95%, 独立使能控制, 待机<1μA | 单节锂电池或5V适配器供电的多路电源系统 |

### 4.2 降压 (Buck)

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 输入电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TPS62065DSGR | TI | WSON-8 | 2×2×0.75 | 2.9V~6V | 2A输出, 3MHz, 效率高达97%, 省电模式, 电源正常输出, 支持1mm电感 | 5V/3.3V系统电源轨、高密度PCB设计 |
| TLV62568DBVR | TI | SOT-23-5 (DBV) | 2.9×1.6 | 2.5V~5.5V | 1A同步降压, 1.5MHz, 效率90%+, 35μA IQ, 100%占空比, 内部补偿 | 空间受限的1A降压、RF/传感器供电 |
| TLV62569DBVR | TI | SOT-23-5 | 2.9×1.6 | 2.5V~5.5V | 2A输出, 1.5MHz, 效率95%, 省电模式, 静态电流35μA, 100%占空比 | 空间受限的高效降压、RF/传感器供电 |
| TPS56637RPAR | TI | QFN-10 | 3×3 | 4.5V~17V | 6A同步降压, 固定频率, 高电流密度 | 高电流密度的12V/5V降压、工业电源 |
| TPS54302DDCR | TI | SOT-23-6 | 2.9×1.6 | 4.5V~28V | 3A同步降压, 580kHz, 内置补偿 | 12V/24V工业总线降压、高电压输入降压 |
| TPS563201DDCR | TI | SOT-23-6 | 2.9×1.6 | 4.5V~17V | 3A同步降压, 固定频率, 高效 | 12V转5V/3.3V、机顶盒、DTV |
| TPS62840DLCR | TI | VSON-HR-8 (DLC) | 1.1×2 | 1.8V~6.5V | 降压, 750mA, 60nA IQ, DCS-Control, 16种VSET可选输出电压, PFM/PWM可选, STOP模式, 25nA关断电流 | 超低功耗IoT、射频友好型电源、电能表 |
| SY8088AAC | Silergy(矽力杰) | SOT-23-5 | 2.9×1.6×1.1 | 2.5V~5.5V | 1A输出, 1.5MHz, 同步降压, 静态电流40μA, 内部软启动, 100%压差操作 | 便携导航、机顶盒、USB加密狗、智能手机 |
| SY8089AAAC | Silergy | SOT-23-5 | 2.9×1.6 | 2.5V~5.5V | 1.5MHz同步降压, 内置开关, 高轻载效率 | 便携设备、空间受限应用 |
| SYR838PKC | Silergy(矽力杰) | CSP-20 | 1.6×2 | 2.6V~5.5V | 降压, 6A输出, 2.4MHz, 28mΩ/17mΩ内置开关, I²C可编程0.7125V~1.5V, 65μA IQ, 短路打嗝保护 | 智能手机、网络平板、大电流降压 |
| RT8010GQW | Richtek(立锜) | WDFN-6 | 2×2 | 2.5V~5.5V | 1A输出, 1.5MHz PWM, 效率95%, 无需外部肖特基二极管 | 便携设备、空间受限的降压应用 |
| NB678GD | NanJing(南京微芯) | SOP-8 | 5.3×6.2 | 4.5V~24V | 同步降压DC-DC, 可调输出, 300kHz~1MHz, 效率85~92%, 过流/过热保护, 软启动 | 工业电源、3.3V/5V稳压、电池充电电路 |
| TPS62913RPUR | TI | VQFN-HR-10 (RPU) | 2×2 | 3V~17V | 3A同步降压, 5μA IQ, 低噪声<20μVRMS, 低纹波<10μVRMS, 集成铁氧体滤波器补偿, 0.8V~5.5V可调输出, 频率同步, SSC扩频 | 噪声敏感ADC供电、LIDAR、RF收发器、高速通信 |

### 4.3 升压 (Boost)

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 输入电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TPS61200DRCR | TI | VSON-10 | 3×3 | 0.3V~5.5V | 升压, 1.5A, 0.5V~5.5V输入, 1.8V~5.5V输出 | 单节/双节镍氢、单节锂电升压、太阳能充电 |
| TPS61230ARNST | TI | VQFN-HR-7 (RNS) | 2×2×0.9 | 2.5V~4.5V | 升压, 6A谷值限流, 21mΩ(LS)/18mΩ(HS), 1.15MHz, 效率96%, 输出短路保护, 真正负载断开 | 单节锂电升压到5V、大电流便携设备 |
| TPS61022RWUR | TI | VQFN-HR-7 (RWU) | 2×2 | 0.5V~5.5V | 升压, 8A谷值限流, 12mΩ(LS)/18mΩ(HS), 1MHz, VIN>1.5V, 效率94.7%@3.6V→5V/3A, 超宽输入电压 | 超级电容备用电源、多节碱性电池升压、IoT |
| TPS61088RHLR | TI | VQFN-20 (RHL) | 3.5×3.5 | 2.7V~12V | 10A全集成同步升压, 11.9A开关限流, 4.5V~12.6V输出, 200kHz~2MHz, IQ 110μA, 效率90%+ | 单节锂电升压到5V/9V/12V、大功率便携设备 |
| TLV61046ADBVR | TI | SOT-23-6 (DBV) | 2.9×1.6 | 1.8V~5.5V | 升压, 输出最高28V, 980mA开关电流, 集成功率二极管和隔离开关, 效率85%@3.6V→12V, 7ms软启动 | PMOLED面板供电、LCD偏置、传感器模块 |
| TPS43060RTER | TI | WQFN-16 (RTE) | 3×3 | 4.5V~38V | 同步升压控制器(需外部MOSFET), 输出最高58V, 50kHz~1MHz可调, 7.5V栅极驱动, IQ 600μA | 汽车电源、Thunderbolt端口、5V/12V/24V升压 |
| SY7200AABC | Silergy(矽力杰) | SOT-23-6 | 2.9×1.6 | 2.7V~5.5V | 升压DC-DC, 1.2MHz, 内部1.5A开关, 输出最高36V, 效率90%+, 可调输出 | LCD偏置供电、OLED屏供电、便携设备升压 |

### 4.4 升降压 (Buck-Boost)

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 输入电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TPS63020DSJR | TI | VSON-14 (DSJ) | 3×3 | 1.8V~5.5V | 升降压, 2A持续/4A峰值, 2.4MHz, I²C可编程输出, 效率96% | 需要I²C动态调压的电池供电设备 |
| TPS63060DSCR | TI | WSON-10 | 3×3 | 2.5V~12V | 升降压, 2A持续/4A峰值, 固定3.4MHz, 效率>90% | 单节锂电升降压供电、电池电压波动大的场景 |
| TPS63802DLAR | TI | VSON-HR-10 (DLA) | 3×2 | 1.3V~5.5V | 升降压, 2A输出@VI≥2.3V, 11μA IQ, 1.8V~5.2V可调输出, PFM/PWM可选, 真正负载断开 | 电池电压波动大的宽范围供电、单节锂电升降压 |

### 4.5 LDO线性稳压器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 输入电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TLV76701DRVR | TI | WSON-6 | 2×2 | 2.5V~16V | 1A LDO, 0.8V~14.6V可调, 精度1%, IQ 50μA, PSRR 70dB@1kHz | 需要高精度、宽输入范围的LDO应用 |
| TLV76733DRVR | TI | WSON-6 | 2×2 | 2.5V~16V | 3.3V固定输出, 1A LDO, 精度1%, PSRR 70dB | 通用3.3V/5V高精度稳压 |
| LP5912 | TI | DSBGA/DSON | 0.8×0.8/1.2×1.2 | 1.6V~5.5V | 500mA LDO, 超低噪声, 高PSRR, 快速瞬态响应 | RF/PLL/VCO供电、高精度传感器 |
| LP5907MFX | TI | SOT-23-5 | 2.9×1.6 | 1.8V~5.5V | 250mA LDO, 超低噪声6.5μVRMS, PSRR 90dB@1kHz, 压差120mV@250mA | RF/模拟前端、音频编解码器供电 |
| TPS7A2030PDBVR | TI | SOT-23-5 | 2.9×1.6 | 1.6V~5.5V | 3.0V LDO, 200mA, 超低噪声, 低压差 | 噪声敏感的模拟/RF电路 |
| TPS7A2033PDBVR | TI | SOT-23-5 | 2.9×1.6 | 1.6V~5.5V | 3.3V LDO, 200mA, 超低噪声, 低压差, 高PSRR | 噪声敏感的模拟/RF电路、音频供电 |
| TPS7A2033PDQNR | TI | X2SON-4 | 1×1 | 1.6V~5.5V | 3.3V LDO, 200mA, 超小封装 | 空间极度受限的便携设备 |
| TPS7A0233PDBVR | TI | SOT-23-5 | 2.9×1.6 | 1.5V~5.5V | 3.3V LDO, 200mA, 超低IQ 25μA, 高PSRR | 低功耗便携设备 |
| TPS7A0333DBVR | TI | SOT-23-5 | 2.9×1.6 | 0.7V~5.5V | 3.3V LDO, 200mA, 超低功耗, IQ 25μA | 电池供电、低功耗IoT |
| TPS7A9201DSKR | TI | WSON-10 | 3×3 | 1.4V~7V | 2A LDO, 超低噪声, 可调节, 高PSRR | 高性能模拟/RF、FPGA辅助供电 |
| TPS7A3901DSCR | TI | WSON-10 | 3×3 | ±1.5V~±6.5V | 双路±LDO, 低噪声, 可独立调节 | 运放/ADC双电源供电、高精度模拟前端 |
| TPS70933DRVR | TI | WSON-6 (DRV) | 2×2 | 2.7V~30V | 3.3V LDO, 200mA, 超低IQ 1μA, 反向电流保护, 精度2%, 关断150nA | 电池供电常开系统、高电压LDO应用 |
| ME6211C33M6G | Microne(南京微盟) | SOT-23-6 | 2.9×1.6 | 2V~6V | 3.3V固定输出LDO, 600mA, 低压差 | 通用3.3V稳压、MCU IO供电 |
| ME6217C33M5G | Microne | SOT-23-5 | 2.9×1.6 | 2V~6V | 3.3V固定输出LDO, 400mA, 低压差, 高纹波抑制 | 通用3.3V稳压、电池供电设备 |
| RT9013 | Richtek(立锜) | SOT-23 | 2.9×1.6 | 2.2V~5.5V | 500mA LDO, 压差250mV@500mA, PSRR -50dB, 噪声30μVRMS, 关断电流0.7μA | RF电路、无线模块、低噪声模拟供电 |
| REF3044AIDBZR | TI | SOT-23-3 | 2.9×1.6 | — | 4.096V精密电压基准, 50ppm/°C, 50μA静态电流 | ADC/DAC基准、精密测量、传感器激励 |
| REF3025AIDBZR | TI | SOT-23-3 (DBZ) | 2.9×1.6 | — | 2.5V精密电压基准, 50ppm/°C, 50μA静态电流 | ADC/DAC基准、精密测量、传感器激励 |
| REF3012AIDBZR | TI | SOT-23-3 (DBZ) | 2.9×1.6 | — | 1.25V精密电压基准, 50ppm/°C, 42μA静态电流 | ADC/DAC基准、低电压精密参考 |
| REF3020AIDBZR | TI | SOT-23-3 (DBZ) | 2.9×1.6 | — | 2.048V精密电压基准, 50ppm/°C, 50μA静态电流 | ADC/DAC基准、精密测量、传感器激励 |
| REF3030AIDBZR | TI | SOT-23-3 (DBZ) | 2.9×1.6 | — | 3.0V精密电压基准, 50ppm/°C, 50μA静态电流 | ADC/DAC基准、精密测量 |
| REF3033AIDBZR | TI | SOT-23-3 (DBZ) | 2.9×1.6 | — | 3.3V精密电压基准, 50ppm/°C, 50μA静态电流 | ADC/DAC基准、精密测量 |
| REF3112AIDBZR | TI | SOT-23-3 (DBZ) | 2.9×1.6 | 1.8V~5.5V | 1.25V电压基准, 15ppm/°C, 135μA静态电流, 高精度 | ADC/DAC基准、便携设备精密参考 |
| REF3124AIDBZR | TI | SOT-23-3 (DBZ) | 2.9×1.6 | 1.8V~5.5V | 2.048V电压基准, 15ppm/°C, 135μA静态电流 | ADC/DAC基准、精密数据采集 |
| REF3325AIDBZR | TI | SOT-23-3 (DBZ) | 2.9×1.6 | 1.8V~5.5V | 2.5V电压基准, 30ppm/°C, 3.9μA超低静态电流 | 低功耗便携设备、电池供电ADC基准、IoT传感器 |
| REF3333AIDBZR | TI | SOT-23-3 (DBZ) | 2.9×1.6 | 1.8V~5.5V | 3.3V电压基准, 30ppm/°C, 3.9μA超低静态电流 | 低功耗便携设备、低功耗ADC/DAC基准 |
| REF3425IDBVR | TI | SOT-23-6 (DBV) | 2.9×1.6 | 2.3V~5.5V | 2.5V电压基准, 25ppm/°C, 95μA静态电流, 高精度 | 精密数据采集、工业传感器 |
| REF35125QDBVR | TI | SOT-23-6 (DBV) | 2.9×1.6 | 1.8V~5.5V | 1.25V电压基准, 7ppm/°C, 210μA静态电流, 超低温漂 | 高精度ADC基准、精密仪表、医疗设备 |
| REF5024AIDR | TI | SOIC-8 (D) | 4.9×3.9 | 4.5V~18V | 4.096V电压基准, 3ppm/°C, 0.05%, 800μA静态电流, 低噪声 | 高精度数据采集、工业控制、精密测量 |
| REF5025IDR | TI | SOIC-8 (D) | 4.9×3.9 | 4.5V~18V | 2.5V电压基准, 3ppm/°C, 0.05%, 800μA静态电流 | 高精度ADC/DAC基准、精密仪表 |
| REF5025AIDR | TI | SOIC-8 (D) | 4.9×3.9 | 4.5V~18V | 2.5V电压基准, 3ppm/°C, 0.1%, 800μA静态电流 | 高精度ADC/DAC基准、精密仪表 |
| REF5025AIDGKR | TI | VSSOP-8 (DGK) | 3×3 | 4.5V~18V | 2.5V电压基准, 3ppm/°C, 0.1%, 800μA, VSSOP小封装 | 空间受限的高精度数据采集 |
| REF5030AIDR | TI | SOIC-8 (D) | 4.9×3.9 | 4.5V~18V | 3.0V电压基准, 3ppm/°C, 0.05%, 800μA静态电流 | 高精度ADC基准、精密电源参考 |
| REF5040AIDR | TI | SOIC-8 (D) | 4.9×3.9 | 4.5V~18V | 4.096V电压基准, 3ppm/°C, 0.05%, 800μA静态电流 | 高精度数据采集、工业控制 |
| TL431BIDBZR | TI | SOT-23-3 (DBZ) | 2.9×1.6 | — | 可调精密并联稳压器/电压基准, 2.495V~36V可调, 0.5%精度, 温漂低, 灌电流1mA~100mA | 可调电压基准、电源反馈误差放大、过压保护 |
| REF2033AIDDCR | TI | SOT-23-THN-5 (DDC) | 2.9×1.6×1.2 | 3.32V~5.5V | 双路输出: 3.3V VREF + VREF/2=1.65V, 精度0.05%, 温漂8ppm/°C, 输出电流±20mA, IQ 360μA, 噪声39.6μVPP | ADC/DAC基准源、精密模拟信号链、电池供电设备、传感器激励 |
| LM399 | TI(原National) | TO-46(4引脚) | 8.2×8.2×5.1 | 7V~40V | 超精密齐纳电压基准, 6.95V典型输出, 温漂0.5ppm/°C(典型), 噪声7μVPP, 内置恒温加热器, 长期稳定性20ppm/千小时 | 精密直流校准源、高位ADC基准(24bit)、计量/测试设备 |
| GM65024 | — | SOT-23-5(推测) | 2.9×1.6×1.1(推测) | — | LDO稳压器(推测), 确切参数待确认, 建议通过LCSC/华秋等平台逆向查询确认 | 待确认 |

### 4.6 电源模块/其他电源

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TPS82130SILR | TI | MicroSiP-8 | 3×2.8×1.5 | 3V~17V | 3A降压模块, 内置电感, DCS-Control, 静态20μA | 工业/电信/SSD, 高密度电源模块 |
| LM27762DSSR | TI | WSON-12 | 3×3 | 1.8V~5.5V | 正负电荷泵, 可生成±5V, 低噪声 | 运放/ADC双电源、音频放大器供电 |
| SC8701QDERR | — | QFN | — | — | 升降压控制器 | 电池供电系统的升降压管理 |
| FM5012F | — | — | — | — | 电源管理/LED驱动 | 待补充详细参数 |
| RH6030 | — | — | — | — | 电源管理IC | 待补充详细参数 |
| RH6015 | — | — | — | — | 电源管理IC | 待补充详细参数 |
| ME2135A50M6G | Microne | SOT-23-5 | 2.9×1.6 | — | 升压DC-DC, 5V固定输出 | 单节锂电升压到5V |
| ME2188C33M5G | Microne | SOT-23-5 | 2.9×1.6 | — | 升压DC-DC, 3.3V输出 | 单节锂电升压到3.3V |
| ME3116AM6G | Microne | SOT-23-6 | 2.9×1.6 | — | 降压DC-DC | 小电流降压应用 |
| LV2842XLVDDCR | — | VSON-6 | 2×2 | — | 降压DC-DC | 待补充详细参数 |
| SGM4056 | SG Micro(圣邦微) | — | — | — | 线性充电器 | 单节锂电池线性充电 |
| XSP16 | — | — | — | — | 电源保护/监控IC | 待补充详细参数 |

### 4.7 负载开关/电子熔断器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| AO4407A | — | SO-8 | 4.9×3.9 | P-MOSFET, -30V, -12A | P沟道MOSFET, -30V DS, -12A, 低RDS(on), 适合负载开关应用 | 电池保护、负载开关、电源切换 |
| TPS22965DSGR | TI | WSON-8 (DSG) | 2×2 | 0.8V~5.7V | 负载开关, 6A持续, 16mΩ RON, 可调上升时间, 可选输出放电, 50μA IQ, 20nA关断电流 | 高密度电源轨切换、电池供电系统 |
| TPS22917DBVR | TI | SOT-23-5 (DBV) | 2.9×1.6 | 1.0V~5.5V | 负载开关, 2A持续, 42mΩ RON, 可调上升时间, 输出放电, 1μA IQ, 10nA关断电流 | 空间受限的电源轨切换、便携设备 |
| SY6280AAC | Silergy(矽力杰) | SOT-23-5 | 2.9×1.6 | 2.7V~5.5V | 高侧负载开关/电源分配开关, 可调限流, 1.8A持续, 85mΩ RON, 过流/过热保护, 输出放电, 25uA IQ, 0.1uA关断电流 | USB端口保护、电源轨切换、便携设备 |

### 4.8

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| MT9700 | 西安航天民芯 | SOT-23-5 | 2.9×1.6 | 2.4V~5.5V | 高侧负载开关, 2A持续, 80mΩ RON, 过流/短路/过温保护, 反向电流阻断, 15μA工作电流, 1uA 关断电流 | USB电源开关、端口电源分配 |
| CH217K | WCH(沁恒) | SOT-23-6 | 2.9×1.6×1.15 | 2.7V~5.5V | USB端口限流配电开关, 内置70mΩ功率NMOS, 可调限流400mA~2.7A, 过流/过热/欠压保护, 输出短路快速限流, 关断电流<1μA | USB端口电源保护、USB Hub下行口限流、便携设备配电保护 |
| TPS25200DRVR | TI | WSON-6 (DRV) | 2×2 | 2.5V~5.5V | 电子熔断器/负载开关, 可调限流, 快速过流保护 | USB电源保护、热插拔保护 |
| TPS2065CDBVR | TI | SOT-23-5 (DBV) | 2.9×1.6 | 4.5V~5.5V | USB电源开关, 1A限流(±20%精度), 86mΩ RON, 反向阻断, 输出放电, 快速过流响应2μs | USB端口电源保护、USB外设供电 (推荐使用 MT9700 替代，价格更低性能更优, 适用于3.3v场景)|
| TPS259261DRVR | TI | WSON-10 (DRV) | 3×3 | 6.1V~13.8V | 电子熔断器, 可调过压/过流保护, 反向电流阻断 | 工业电源保护、热插拔应用(这颗芯片适用电压较高，这个需要注意) |

### 4.9 电源路径管理

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TPS2121RUXR | TI | VQFN-HR-12 (RUX) | 2.5×2.5×0.75 | 2.7V~22V | 双输入单输出Power MUX, 4.5A最大电流, RON=56mΩ, IQ=300μA, 无缝切换, 可调限流, 过压保护(OVP), 浪涌电流控制, 反向电流阻断 | 工业双电源冗余(5V/12V/24V)、汽车电子、服务器备用电源、USB-C多源供电 |
| TPS2117DRLR | TI | SOT-5X3 (DRL) | 1.6×1.6×0.6 | 1.6V~5.5V | 双输入单输出电源MUX, 最大4A电流, RON=20mΩ, IQ=1.32μA, 可编程优先级/手动切换, 浪涌电流控制, 反向电流阻断, 热关断 | 双电源冗余切换、电池备份系统、IoT设备、电表、多电源轨系统 |
| TPS2116DRLR | TI | SOT-5X3 (DRL) | 1.6×1.6 | 1.6V~5.5V | 2.5A电源多路复用器, 40mΩ RON, 1.32μA IQ, 浪涌电流控制, 反向电流阻断, 优先级自动切换, 手动切换 | 双电源冗余、电池备份切换、IoT设备、电表 |
| LTC4412ES6 | ADI | TSOT-23-6 (S6) | 2.9×1.6 | 3.6V~36V | 理想二极管控制器, 低损耗ORing, 控制外部P-MOSFET, 自动切换 | 双电源冗余、电池切换、太阳能冗余 |

---

## 5. MOSFET功率管与栅极驱动器

### 5.1 MOSFET功率管

| 型号 | 厂商 | 类型 | 封装 | 封装尺寸 (mm) | VDS | RDS(on) | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| CSD17313Q2 | TI | N-MOSFET | SON-6 | 2×2 | 30V | 32mΩ@4.5V | 逻辑电平驱动, Qg=2.1nC, Qgd=0.4nC, 持续5A(封装限制) | DC-DC转换器、电池/负载管理、5V栅极驱动 |
| CSD25402Q3A | TI | P-MOSFET | VSONP-8 | 3.3×3.3 | -20V | 8.9mΩ@4.5V | 逻辑电平驱动, Qg=7.5nC, 持续-35A(封装限制) | DC-DC转换器、电池管理、负载开关 |
| CSD18534Q3AT | TI | N-MOSFET | SON (SO-8兼容) | 5×6 | 30V | 3.5mΩ@10V / 5.5mΩ@4.5V | 逻辑电平驱动, Qg=30nC, Qgd=8nC, 持续75A(封装限制) | DC-DC转换器、电池保护、大电流负载开关 |
| CSD18543Q3AT | TI | N-MOSFET | SON (SO-8兼容) | 5×6 | 30V | 3.2mΩ@10V / 4.5mΩ@4.5V | 逻辑电平驱动, Qg=31nC, Qgd=8.9nC, 持续75A(封装限制) | DC-DC转换器、电池保护、大电流负载开关 |
| CSD17575Q3 | TI | N-MOSFET | VSON-CLIP-8 (DQG) | 3×3 | 30V | 2.3mΩ@10V / 3.2mΩ@4.5V | 逻辑电平驱动, Qg=23nC, Qgd=5.4nC, 持续60A(封装限制) | DC-DC转换器、电池保护、高密度负载开关 |
| STL90N10F7 | STMicro | N-MOSFET | PowerFLAT (5×6) | 5×6 | 100V | 7mΩ@10V (典型) | STripFET F7技术, 低Qg, 低Crss/Ciss, 高雪崩耐量, 持续70A | DC-DC转换器、电源管理、工业电源 |

### 5.2 MOSFET/IGBT栅极驱动器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 峰值电流 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|
| UCC27524DR | TI(德州仪器) | SOIC-8 (D) | 4.9×3.9×1.75 | 4.5V~18V | 5A/5A(源/灌) | 双通道非反相, 带使能, 13ns传播延迟, 1ns通道匹配, CMOS/TTL兼容输入, 可驱动MOSFET/IGBT/GaNFET, −40~140°C | DC-DC转换器栅极驱动、功率MOSFET/IGBT开关驱动、同步整流驱动、开关电源、电机驱动 |
| UCC27524ADR | TI(德州仪器) | SOIC-8 (D) | 4.9×3.9×1.75 | 4.5V~18V | 5A/5A(源/灌) | 同UCC27524但支持−5V输入负压处理, 双通道非反相, 带使能, 13ns传播延迟, 滞回逻辑高抗扰, −40~140°C | 存在地弹/负压瞬态的电源系统、DC-DC变换器、工业电源、电机驱动 |
| UCC27324DR | TI(德州仪器) | SOIC-8 (D) | 4.9×3.9×1.75 | 4.5V~15V | 4A/4A(源/灌) | 双通道非反相, 无使能, 25ns传播延迟, Bi-CMOS True Drive输出, 可并联, TTL/CMOS兼容输入, −40~125°C | 通用低边MOSFET栅极驱动、DC-DC电源、负载点(POL)转换器、简单驱动应用 |
| UCC27424DR | TI(德州仪器) | SOIC-8 (D) | 4.9×3.9×1.75 | 4V~15V | 4A/4A(源/灌) | 双通道非反相, 带使能, 25ns传播延迟, Bi-CMOS True Drive输出, 可并联, TTL/CMOS兼容输入, −40~105°C | 需要使能控制的MOSFET/IGBT栅极驱动、开关电源、电机控制、工业电源管理 |
| UCC27444DR | TI(德州仪器) | SOIC-8 (D) | 4.9×3.9×1.75 | 4V~18V | 4A/4A(源/灌) | 双通道非反相, 每通道独立使能, 支持−5V输入负压处理, 7ns下降, TTL/CMOS兼容, −40~125°C | 需要使能控制的双通道驱动、存在地弹/负压的工业电源、电机控制、开关电源 |
| UCC27624DR | TI(德州仪器) | SOIC-8 (D) | 4.9×3.9×1.75 | 4.5V~26V | 5A/5A(源/灌) | 双通道非反相, 带使能, 17ns传播延迟, 支持−10V输入负压处理, UVLO 4V, TTL/CMOS兼容, −40~150°C, 支持GaNFET/IGBT/MOSFET | 高性能DC-DC转换器、服务器电源、通信设备电源、电机驱动、太阳能逆变器 |
| UCC27511DBVR | TI(德州仪器) | SOT-23-6 | 2.9×1.6×1.1 | 4.5V~18V | 4A源/8A灌 | 单通道低边, 分离输出(OUTH/OUTL独立调节开关速度), 双输入(IN+/IN-可选同相/反相), 使能, 13ns传播延迟, TTL/CMOS兼容, −40~140°C | 开关电源、DC-DC转换器、太阳能逆变器、电机驱动、UPS、GaN FET驱动 |
| UCC27517DBVR | TI(德州仪器) | SOT-23-5 | 2.9×1.6×1.1 | 4.5V~18V | 4A/4A(源/灌) | 单通道低边, 13ns传播延迟, 9ns上升/7ns下降, 单输入, 滞回逻辑, TTL/CMOS兼容, −40~140°C, UVLO 5V | 空间受限的MOSFET/IGBT栅极驱动、DC-DC电源、负载点(POL)转换器、家电电源 |
| UCC27517ADBVR | TI(德州仪器) | SOT-23-5 | 2.9×1.6×1.1 | 4.5V~18V | 4A/4A(源/灌) | 同UCC27517但支持−5V输入负压处理, 单通道低边, 13ns传播延迟, TTL/CMOS兼容, 滞回逻辑, −40~125°C, 与UCC27517引脚兼容 | 存在地弹/负压瞬态的电源系统、DC-DC变换器、工业电源、电机驱动 |
| FD6288Q | — | — | — | — | — | 三相无刷电机栅极驱动 | 三相BLDC/PMSM电机驱动 |

## 6. 逻辑器件

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| 74HC595D | Nexperia | SO-16 (SOT109-1) | 9.9×3.9×1.35 | 2V~6V(标称5V) | 8位串入并出移位寄存器, 三态输出, 传播延迟265ns, 最高24MHz | LED阵列驱动、IO扩展、数码管驱动 |
| 74HC595BQ | Nexperia | DHVQFN-16 | 3.6×2.6×0.95 | 2V~6V | 8位串入并出移位寄存器, 三态输出, 功耗0.5W, 静态160μA, 更小封装 | 空间受限的LED驱动、IO扩展 |
| SGM3157YC6 | SG Micro(圣邦微) | SC70-6 | 2.1×2.0×1.0 | 1.8V~5.5V | 单通道SPDT模拟开关, RON≈3.5Ω@5V, 带宽300MHz, 先断后合, 低电荷注入, 导通电流±300mA, 轨到轨 | 音频信号路由、模拟信号切换、电平转换、电池供电设备信号MUX |
| ADG708BRUZ | ADI(亚德诺) | TSSOP-16 | 5.0×4.4×1.2 | 1.8V~5.5V(单) / ±2.5V(双) | 8:1单通道CMOS模拟MUX, RON≈2.5Ω@5V, 导通电流30mA, 3V逻辑兼容, 轨到轨, 先断后合 | 多路模拟信号采集、音频路由、数据采集系统(DAQ)、自动测试设备 |
| CD74HC4051PWR | TI | TSSOP-16 (PW) | 5.0×4.4×1.0 | 2V~6V(单) / ±1V~±5V(双) | 8:1单通道模拟MUX, RON≈40Ω@5V, 带宽200MHz, 先断后合, 25mA导通电流, 8μA供电电流, -55~125°C | 模拟/数字信号多路复用、传感器选择、通用逻辑电平信号切换 |
| CD4051B | 多家(TI/ST等) | SOIC-16/TSSOP-16 | 9.9×3.9(SOIC) / 5.0×4.4(TSSOP) | 3V~20V(单) / ±2.5V~±10V(双) | 8:1单通道CMOS模拟MUX/DEMUX, RON≈125Ω@10V, 带宽20MHz, 逻辑电平转换, 0.04μA静态电流, 先断后合 | 通用模拟/数字信号切换、消费电子、工业控制 |
| CD4052B | 多家(TI/ST等) | SOIC-16/TSSOP-16 | 9.9×3.9(SOIC) / 5.0×4.4(TSSOP) | 3V~20V(单) / ±2.5V~±10V(双) | 2通道(差分)4:1 CMOS模拟MUX/DEMUX, RON≈125Ω@10V, 带宽25MHz, 逻辑电平转换, 0.04μA静态电流, 先断后合 | 差分信号多路复用、立体声音频切换、双通道模拟信号路由 |
| CD4067BM96 | TI | SOIC-24 (DW) | 15.4×7.5×2.65 | 3V~20V(单) / ±2.5V~±10V(双) | 16:1单通道CMOS模拟MUX/DEMUX, RON=125Ω@15V, 带宽14MHz, 导通电流±10mA, 静态0.04μA, 片内二进制地址译码, 先断后合, -55~125°C | 16路模拟信号多路复用、数据采集系统(DAQ)、音频路由、工业过程控制、自动测试设备 |
| SN74LVC2G66DCTR | TI | SSOP-8 (DCT) | 2.3×2.4 | 1.65V~5.5V | 双路SPST模拟开关, 双向, RON≈6Ω@4.5V, 高速0.5ns, 轨到轨, 支持5.5V信号 | 模拟/数字信号切换、音频路由、电平转换 |
| TS3A44159PWR | TI | TSSOP-16 (PW) | 5×4.4 | 1.65V~4.3V | 4通道SPDT模拟开关(2×DPDT), 先断后合, RON<0.5Ω, 低电荷注入, THD低 | 音频路由、信号切换、模拟多路复用 |

---

## 7. 存储器件

### 7.1 SPI NOR Flash

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| W25Q80DVUXIE | Winbond | USON-8 | 2×3 | 2.7V~3.6V | 8M-bit (1MB) SPI NOR Flash, 支持Dual/Quad SPI, 80MHz, DTR | 固件存储、Bootloader、小容量配置数据 |
| W25Q16JVUXIQ | Winbond | USON-8 | 2×3 | 2.7V~3.6V | 16M-bit (2MB) SPI NOR Flash, 支持Dual/Quad SPI, 133MHz, DTR | 固件存储、数据日志、FPGA配置存储 |
| W25Q16JWXHIQ | Winbond | USON-8 | 2×3 | 1.65V~1.95V | 16M-bit (2MB) SPI NOR Flash, 支持Dual/Quad SPI, 133MHz, DTR | 固件存储、数据日志、FPGA配置存储 |
| W25Q32JWBYIQ | Winbond | SOIC-8 | 5.3×8 | 2.7V~3.6V | 32M-bit (4MB) SPI NOR Flash, 支持Dual/Quad SPI, 104MHz, DTR | 固件存储、配置参数、应用代码存储 |
| W25Q64JVSSIQ | Winbond | SOIC-8 | 4.9×3.9 | 2.7V~3.6V | 64M-bit (8MB) SPI NOR Flash, 支持Dual/Quad SPI, 133MHz, DTR | 固件存储、大容量数据日志、显示屏资源存储 |
| W25Q256JVEIQ | Winbond | SOIC-8 | 5.3×8 | 2.7V~3.6V | 256M-bit (32MB) SPI NOR Flash, 支持Dual/Quad SPI, 80MHz, DTR | 大容量固件存储、文件系统、FPGA配置 |

### 7.2 FRAM (铁电存储器)

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| FM25L16B | Cypress(Infineon) | SOIC-8/DFN-8 | 4.9×3.9×1.5(SOIC) / 3.0×4.0×0.75(DFN) | 2.7V~3.6V | 16Kbit (2K×8) SPI FRAM, 20MHz, 无限次读写(1e15), 20年数据保持, 无需电荷泵, 读3.3mA/写2.5mA/待机0.2μA | 非易失性数据记录、工业参数存储、掉电保护数据存储、高耐久性替代EEPROM |

### 7.3 I²C EEPROM

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| M24C08 | STMicro | — | — | 1.8V~5.5V | 8Kb (1024×8) I²C EEPROM, 1MHz, 工作温度-40~105°C, 页面16字节 | 配置参数存储、设备校准数据、小容量非易失存储 |
| M24C64 | STMicro | SOIC-8/TSSOP-8 | 4.9×3.9(SOIC) / 3.0×6.4(TSSOP) | 1.7V~5.5V | 64Kbit (8KB) I²C EEPROM, 1MHz, 32字节页面写入, 100万次擦写, 200年数据保存, I²C地址由3个引脚配置 | 配置参数存储、设备校准数据、系统日志、蓝牙配对信息存储 |
| M24C640FMC6TG | STMicro | UFDFPN-8 | 2×3 | 1.8V~5.5V | 640Kbit (80KB) I²C EEPROM, 1MHz, 32字节页面, 100万次擦写, 200年数据保存 | 大容量配置存储、日志记录、设备校准 |

### 7.4 SDRAM

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| W9825G6KH-6I | Winbond | TSOP-54 | 14×20 | 3.3V±0.3V | 256Mb (16M×16) SDRAM, 166MHz(PC133), CL3, tAC=8ns, 100mA工作/10mA待机 | 嵌入式系统DRAM缓存、LCD显存、网络设备 |

---

## 8. LED驱动

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| HTR3229SQER | Heroic(禾润) | QFN-32 | 4×4 | 2.5V~5.5V | 16×8 LED矩阵驱动, I²C 1MHz, 每路独立256级PWM调光, 开路/短路检测 | 白色家电LED面板、IoT设备、智能音箱 |
| HD107S | — | LED集成封装 (5050) | 5×5×1.4 | 4.5V~5.3V | 全彩LED, 双线SPI, 26kHz PWM, 最高40MHz时钟, 内置恒流 | 全彩LED灯带、像素屏、装饰照明 |
| SK9822 | — | LED集成封装 (5050) | 5×5×1.6 | 4.5V~5.5V | 全彩LED, 双线SPI, 256级灰度, 32级亮度, 最高30MHz | 全彩LED灯带、智能照明、显示屏 |
| MAX7219CWG | Maxim(ADI) | SOP-24 | 8.45×6.0 | 4V~5.5V | 8位LED数码管驱动, SPI接口, 可级联, 16级PWM调光, 150mA段驱动, LED点阵8×8 | 数码管显示、LED点阵屏、工业仪表、数字时钟 |
| TPS61165DRVR | TI | WSON-6 (DRV) | 2×2 | 3V~18V | 升压LED驱动, 38V/400mA输出, 1.2MHz, 效率90%, EasyScale 1-Wire调光, 负载断开 | LCD背光驱动、高亮LED照明、单串LED驱动 |
| SGM3732YTN6G | SG Micro(圣邦微) | TSOT-23-6 | 2.9×1.6 | 2.7V~5.5V | 升压LED驱动, 38V/1.35A内部开关, 1.1MHz, PWM调光2kHz~60kHz, 支持最多10颗串LED | 小尺寸LCD背光、手机/相框LED驱动、便携设备 |
| CH455G | WCH(沁恒) | SOP-16 | 9.9×3.9 | 2.7V~5V | 数码管显示驱动(4位) + 28键键盘扫描, I²C接口, 8级亮度控制, 内置时钟振荡, 低功耗睡眠, 按键中断 | 家电面板、键盘扫描、LED数码管显示 |
| SK6805 | — | LED封装(2020) | 2×2×0.75 | 3.7V~5.3V | 全彩LED(2020小封装), 双线SPI, 256级灰度, 最高15MHz, 内置恒流, 低功耗 | 紧凑型全彩LED灯带、像素屏、装饰照明、智能穿戴 |

---

## 9. 微控制器 (MCU)

### 9.1 WCH(沁恒) RISC-V 系列

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 主频 | Flash/SRAM | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| CH32V305FBP6 | RISC-V4C | TSSOP-20 | 6.5×4.4 | 144MHz | 128KB/32KB | 2.5V/3.3V | 以太网+USB PHY, CAN, USB2.0 HS, 17 GPIO | 路由器、交换机、网关、工业自动化 |
| CH32V305F8U6 | RISC-V4C | QFN-20 | 3×3 | 144MHz | 64KB/20KB | 2.5V~3.3V | 以太网+USB PHY, CAN, USB2.0 HS, 15 GPIO, 小封装 | 空间受限的网络节点、IoT网关、USB外设 |
| CH32V203F8U6 | RISC-V4C | QFN-28 | 4×4 | 144MHz | 64KB/20KB | 2.5V~5.5V | USB2.0 FS, 多种定时器, ADC | 工业控制、USB外设 |
| CH32V003F4U6 | RISC-V4C | QFN-20 | 3×3 | 48MHz | 16KB/2KB | 2V~5.5V | 超低成本, 小封装, 基础外设 | 低成本嵌入式控制、替代8位MCU |
| CH32H417 | RISC-V | — | — | — | — | — | 高性能RISC-V MCU | 待补充详细参数 |
| CH32M030C8T7 | RISC-V | — | — | — | — | — | 电机控制MCU | 待补充详细参数 |

### 9.2 WCH(沁恒) X系列 (USB PD + MCU)

| 型号 | 内核 | 封装 | 主频 | Flash/SRAM | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|
| CH32X035G8U6 | RISC-V4C | QFN-28 | 48MHz | 65KB/20KB | 2V~5.5V | USB PD+Type-C, USB Host/Device, 2路OPA, 3路CMP, 12bit ADC, TouchKey | PD受电设备、无线充电器、电动工具 |
| CH32X033F8U6 | RISC-V4C | QFN-20 | 48MHz | 62KB/20KB | 2V~5.5V | USB2.0 FS + PHY, 12bit ADC, 4路USART, SPI, I²C | 工业自动化、控制领域 |

### 9.3 Artery(雅特力) ARM Cortex-M4 系列

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 主频 | Flash/SRAM | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| AT32F435RGT7 | Cortex-M4 FPU | LQFP-64 | 10×10 | 288MHz | 1024KB/384KB | 2.6V~3.6V | 3×SPI, 4×I²C, 4×USART, 2×USB OTG, 2×CAN FD, 3×ADC, 2×DAC, XMC, 以太网MAC | 工业自动化、机器人、医疗设备、智能家居 |
| AT32F435CGU7 | Cortex-M4 FPU | QFN-48 | 6×6 | 288MHz | 1024KB/384KB | 2.6V~3.6V | 同F435RGT7性能, QFN-48小封装, 3×SPI, 4×I²C, 4×USART, 2×USB OTG, 2×CAN FD, 3×ADC, 2×DAC, XMC, 以太网MAC | 空间受限的高性能应用、工业控制、机器人 |
| AT32F425F8P7 | Cortex-M4 | TSSOP-20 | 6.5×4.4 | 96MHz | 64KB/16KB | 2V~3.6V | 小封装, USB OTG, CAN, 4×USART, 3×SPI/I²S, 2×I²C, 12bit ADC | 紧凑型控制、USB外设 |
| AT32F425K8U7 | Cortex-M4 | QFN-32 | 4×4 | 96MHz | 64KB/16KB | 2.4V~3.6V | USB FS, CAN, 13个定时器, 12个通信接口, sLib安全库 | 紧凑型高性能控制、USB设备 |
| AT32F405KCU7 | Cortex-M4 | QFN-32 | 4×4 | 168MHz | 256KB/32KB | 2V~3.6V | USB FS OTG, 丰富外设 | 紧凑型高性能控制 |
| AT32F421G8U7 | Cortex-M4 | QFN-28 | 4×4 | 120MHz | 64KB/16KB | 2V~3.6V | 小封装高性能, USB | 紧凑型MCU应用 |
| AT32F415K8U7 | Cortex-M4 | QFN-32 | 4×4 | 150MHz | 64KB/16KB | 2V~3.6V | USB FS, 基础外设 | 成本敏感型USB应用 |
| AT32F415CBU7 | Cortex-M4 | LQFP-48 | 7×7 | 150MHz | 128KB/32KB | 2V~3.6V | 更多IO, USB FS | 中等复杂度控制 |
| AT32F403ACGT7 | Cortex-M4 | LQFP-48 | 7×7 | 200MHz | 256KB/64KB | 2.6V~3.6V | 高性能, 丰富外设 | 工业控制、数据采集 |
| AT32F403ACGU7 | Cortex-M4 | QFN-48 | 6×6 | 200MHz | 256KB/64KB | 2.6V~3.6V | 高性能, 小封装 | 空间受限的高性能应用 |

### 9.4 PY32 (Puya 普冉) ARM Cortex-M0+ 系列

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 主频 | Flash/SRAM | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| PY32F002BF15U6 | Cortex-M0+ | QFN-20 | 3×3 | 24MHz | 24KB/3KB | 1.7V~5.5V | 1×SPI, 1×I²C, 1×USART, 8路ADC, 2路比较器 | 超低成本控制、替换8位MCU |
| PY32F030F28U6TR | Cortex-M0+ | QFN-28 | 4×4 | 48MHz | 32KB/4KB | 1.7V~5.5V | 更多外设, 更高性能 | 通用低成本MCU |
| PY32F030K28U6 | Cortex-M0+ | QFN-32 | 4×4 | 48MHz | 32KB/4KB | 1.7V~5.5V | 更多IO | 通用低成本控制 |
| HC32F005C6PA | Cortex-M0+ | — | — | 32MHz | 32KB/4KB | 1.8V~5.5V | 华大半导体MCU | 国产替代、低成本控制 |
| HC32L110C6UA | Cortex-M0+ | — | — | 32MHz | 32KB/4KB | 1.8V~5.5V | 低功耗版本 | 电池供电的低功耗应用 |
| HK32F030MF4P6 | 航顺(HK) | LQFP-48 | 7×7 | 48MHz | 64KB/8KB | 2V~3.6V | 2×UART, 1×SPI, 1×I²C, 12bit ADC(5ch), 2×Timer, DMA, 引脚兼容STM32F030 | 工业控制、IoT、家电控制、国产替代STM32F030 |

### 9.5 HC32 (华大半导体) ARM Cortex-M4 系列

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 主频 | Flash/SRAM | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| HC32F460JEUA | Cortex-M4 | LQFP-64 | 10×10 | 168MHz | 512KB/128KB | 2.7V~3.6V | 丰富外设, 高性能 | 工业控制、人机界面 |
| HC32F460JETA | Cortex-M4 | LQFP-100 | 14×14 | 168MHz | 512KB/128KB | 2.7V~3.6V | 更多IO, 高性能 | 复杂工业控制、通信设备 |

### 9.8 GigaDevice ARM Cortex-M4 系列

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 主频 | Flash/SRAM | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| GD32F350G8U6TR | Cortex-M4 | QFN-28 | 4×4 | 108MHz | 64KB/8KB | 2.6V~3.6V | 1×GPTM(32bit), 5×GPTM(16bit), 1×Adv TM, 2×USART, 2×I2C, 2×SPI/I2S, USB2.0 FS OTG, 12bit ADC(10ch), 1×DAC, 2×COMP | 通用控制、USB设备、电机控制 |

### 9.9 ESP32 系列 (乐鑫)

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 关键参数 | 适用场景 |
|---|---|---|---|---|---|
| ESP32-C3FH4 | Xtensa 32位单核 RISC-V | QFN-32 | 5×5 | 160MHz, 4MB片上Flash, 400KB SRAM, 22 GPIO, 2.4GHz Wi-Fi 802.11b/g/n + Bluetooth 5(LE), -40~105°C | IoT、智能家居、Wi-Fi/BLE连接 |
| ESP32-C6 | 32位RISC-V + 低功耗核 | QFN-32 | 5×5 | 160MHz, 4/8MB片上Flash, 320KB SRAM, 22 GPIO, 2.4GHz Wi-Fi 6 + BLE 5.4, Zigbee/Thread, -40~85°C | 低功耗IoT、蓝牙音频、Zigbee网关、智能家居 |
| ESP32-S3FN8 | Xtensa 32位 LX7 双核 | QFN-56 | 7×7 | 240MHz, 8MB片上Flash, 45 GPIO, 2.4GHz Wi-Fi 802.11b/g/n + BT5(LE), AI指令集, LCD/Camera接口 | 智能人机交互、AIoT、HMI应用 |
| ESP32-S31 | RISC-V 双核 | QFN | 8×8 | 高性能RISC-V双核, Wi-Fi 6 + BT5.4(LE), 1Gbps Ethernet, 512KB SRAM, 16/32MB Flash/PSRAM | 高性能AIoT、多协议连接、边缘计算 |
| ESP32-P4 | 双核LX8 1GHz HP + RISC-V LP | QFN-56 | 6×6 | HP 1GHz/LP 8MHz, 768KB SRAM, 32 GPIO, 2.4GHz Wi-Fi 6 + BLE 5.4, 1G Ethernet MAC, 2×USB OTG, I³C, DSC, 内置PSRAM控制器 | 高性能IoT网关、边缘AI、视频处理、智能家居枢纽 |

### 9.10 SF32LB52x (思澈科技) ARM Cortex-M33 系列

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 关键参数 | 适用场景 |
|---|---|---|---|---|---|
| SF32LB525UC6 | Cortex-M33 STAR-MC1 大小核 | QFN-68 | 7×7×0.85 | 大核240MHz(370DMIPS), 小核24MHz, 576KB Flash, 蓝牙5.3, 2D/2.5D图形引擎, 24bit音频DAC/ADC | 可穿戴设备、智能手表、智能家居 |
| SF32LB527UD6 | Cortex-M33 STAR-MC1 大小核 | QFN-68 | 7×7×0.85 | 类似525UC6, 更大内存/存储配置 | 可穿戴设备、智能移动终端 |
| SF32LB52JUD6 | Cortex-M33 STAR-MC1 大小核 | QFN-68 | 7×7×0.85 | 基础配置版本, 蓝牙5.3, 图形引擎 | 成本敏感型可穿戴/IoT |

### 9.11 Raspberry Pi RP2040

| RP2354A | 双核Cortex-M33 / 双核Hazard3 RISC-V(可选切换) | QFN-60 | 7×7×0.85 | 150MHz, 520KB SRAM, 内置2MB Stacked Flash, 30 GPIO, TrustZone安全, 12×PIO, SHA-256加速, USB1.1 | 嵌入式控制、IoT边缘设备、工业自动化、需大容量Flash的紧凑型设计 |
| RP2354B | 双核Cortex-M33 / 双核Hazard3 RISC-V(可选切换) | QFN-80 | 10×10×0.85 | 150MHz, 520KB SRAM, 内置2MB Stacked Flash, 48 GPIO, TrustZone安全, 12×PIO, SHA-256加速, USB1.1 | 高性能嵌入式、安全IoT、边缘计算、需大容量Flash的Pico类设计 |
| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 关键参数 | 适用场景 |
|---|---|---|---|---|---|
| RP2040 | 双核Cortex-M0+ | QFN-56 | 7×7 | 133MHz, 264KB SRAM, 2×UART, 2×SPI, 2×I²C, 16×PWM, USB1.1 Host/Device, 8×PIO状态机, -40~85°C | DIY项目、教育、IoT、HID设备、PIO自定义外设 |
| RP2350A | 双核Cortex-M33 / 双核Hazard3 RISC-V(可选切换) | QFN-60 | 7×7 | 150MHz, 520KB SRAM, 30 GPIO, TrustZone安全, 12×PIO, 4×ADC, SHA-256加速, USB1.1 | 紧凑型安全嵌入式、工业控制、可穿戴设备 |
| RP2350B | 双核Cortex-M33 / 双核Hazard3 RISC-V(可选切换) | QFN-80 | 10×10 | 150MHz, 520KB SRAM, 48 GPIO, TrustZone安全, 12×PIO, 4/8×ADC, SHA-256加速, USB1.1 | 高性能嵌入式、安全IoT、边缘计算、Pico 2 |

### 9.12 CW32 (武汉芯源) Cortex-M0+ 系列

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 主频 | Flash/SRAM | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| CW32L010F8U6 | Cortex-M0+ | QFN-20 | 3×3 | 48MHz | 64KB/8KB | 1.8V~5.5V | 超低功耗, 待机0.3μA, 多路USART/SPI/I²C, 12bit ADC, 比较器, 宽电压 | 超低功耗IoT、便携设备、传感器节点 |

### 9.13 STC (宏晶) 8051系列

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 主频 | Flash/SRAM | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| STC8H1K17T | 8051 (1T) | TSSOP-20 | 6.5×4.4 | 35MHz | 17KB/1.2KB | 2.0V~5.5V | 超高速8051内核, 12bit ADC(9ch), 比较器, PWM, 2×UART, 1×SPI, 1×I²C, 内置晶振, 硬件USB | 工业控制、传感器节点、家电控制、替代传统51MCU |

### 9.14 TI (德州仪器) ARM Cortex-M0+ 系列

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 主频 | Flash/SRAM | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| MSPM0G3507SRHBR | Cortex-M0+ | VQFN-32 (RHB) | 5×5×0.9 | 80MHz | 128KB/32KB | 1.62V~3.6V | 2×12bit ADC@4Msps(17通道), 1×DAC, 2×运放(PGA), 3×比较器, CAN-FD, MATHACL数学加速器, AES加密, 5V耐压I/O | 电机控制、工业传感、电池管理、消费电子、需CAN-FD的低成本应用 |

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 主频 | Flash/SRAM | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| STM32N647IO | Cortex-M55 FPU + Neural-ART NPU | UFBGA-176 | 10×10 | 800MHz | —/4.2MB | 1.71V~3.6V | Neural-ART NPU 600GOPS@1GHz, NeoChrom GPU, H.264编码, ISP, 2×USB HS OTG, 1G Ethernet TSN, 6×SPI, 4×I²C, 2×I³C, 10×UART, 3×FDCAN, LCD-TFT, CSI-2, TrustZone, SESIP3, -40~125°C | AI边缘计算、计算机视觉、HMI、智能家居、工业控制 |
| STM32H7R7L8 | Cortex-M7 FPU + NeoChrom GPU | LQFP-144 | 20×20 | 600MHz | 64KB/620KB | 1.71V~3.6V | NeoChrom GPU, JPEG编解码, LCD-TFT, 2×USB HS OTG+PHY, 以太网MAC, 6×SPI, 3×I²C, 1×I³C, 7×UART, 2×FDCAN, 2×12bit ADC(5MSps), CORDIC, Chrom-ART, FMC, OSPI, -40~125°C | HMI显示、图形加速、工业控制、边缘网关 |
| STM32H757XIH6 | Cortex-M7 FPU + Cortex-M4 FPU 双核 | UFBGA-265 | 14×14 | 480/240MHz | 2MB/1MB | 1.62V~3.6V | 双核M7+M4, 加密加速器AES/HASH/TRNG, SMPS降压, LCD-TFT, MIPI DSI, Chrom-ART, JPEG编解码, 以太网MAC, 2×USB OTG, 3×ADC(16bit), 2×DAC, 2×CAN FD, 168 I/O | 双核协同控制、高性能HMI、安全嵌入式、工业网关 |
| STM32H723VGT6 | Cortex-M7 | LQFP-100 | 14×14 | 550MHz | 1MB/564KB | 1.62V~3.6V | 最高性能, 双精度FPU, Chrom-ART | 高性能HMI、电机控制、边缘AI |
| STM32H723ZGT6 | Cortex-M7 FPU | LQFP-144 | 20×20 | 550MHz | 1MB/564KB | 1.62V~3.6V | 同H723VGT6, LQFP-144更多IO, 2×USB OTG HS+FS, 以太网MAC, 4×USART, 4×SPI, 4×I²C, 3×ADC, FMC, QSPI, Chrom-ART, JPEG编解码, -40~125°C | 电机控制、工业HMI、网络网关、数据采集 |
| STM32H743XIH6 | Cortex-M7 | UFBGA-176 | 10×10 | 480MHz | 2MB/1MB | 1.62V~3.6V | 超大BGA封装, 最多168 IO | 超复杂SoC级应用 |
| STM32H743VIH6 | Cortex-M7 | LQFP-100 | 14×14 | 480MHz | 2MB/1MB | 1.62V~3.6V | LQFP-100封装, 更易焊接, 丰富外设 | 高性能工业控制、HMI、电机控制 |
| STM32H750VBT6 | Cortex-M7 | LQFP-100 | 14×14 | 480MHz | 128KB/1MB | 1.62V~3.6V | 高性能, 内置ART加速器 | 高性能实时控制 |
| STM32H7B0VBT6 | Cortex-M7 | LQFP-100 | 14×14 | 280MHz | 128KB/1MB | 1.62V~3.6V | 双精度FPU, 高算力 | 高性能嵌入式计算 |
| STM32H7B0RBT6 | Cortex-M7 | LQFP-64 | 10×10 | 280MHz | 128KB/1MB | 1.62V~3.6V | 高算力, 小封装 | 高性能紧凑型设计 |
| STM32H563VIT6 | Cortex-M33 | LQFP-100 | 14×14 | 250MHz | 2MB/640KB | 1.71V~3.6V | TrustZone安全, 丰富外设 | 安全敏感型工业/IoT应用 |
| STM32H563RGT6 | Cortex-M33 | LQFP-64 | 10×10 | 250MHz | 2MB/640KB | 1.71V~3.6V | 高性能, 中等IO | 工业控制、通信网关 |
| STM32H503RBT6 | Cortex-M33 | LQFP-64 | 10×10 | 250MHz | 128KB/32KB | 1.62V~3.6V | 高性价比安全MCU | 成本敏感的安全应用 |
| STM32H503CBU6 | Cortex-M33 | UFBGA-100 | 7×7 | 250MHz | 128KB/32KB | 1.62V~3.6V | 高性价比, BGA封装 | 紧凑型安全应用 |
| STM32U575VGT6 | Cortex-M33 | UFBGA-100 | 7×7 | 160MHz | 2MB/786KB | 1.71V~3.6V | 超低功耗, TrustZone, 640KB SRAM+扩展 | 电池供电的超低功耗IoT |
| STM32U575RGT6 | Cortex-M33 | LQFP-64 | 10×10 | 160MHz | 2MB/786KB | 1.71V~3.6V | 超低功耗, LQFP封装易于手工焊接 | 电池供电IoT、可穿戴 |
| STM32F412RGT6 | Cortex-M4 FPU | LQFP-64 | 10×10 | 100MHz | 1MB/256KB | 1.7V~3.6V | 大Flash, 丰富通信接口 | 数据密集型中性能应用 |
| STM32F411CEU6 | Cortex-M4 FPU | UFQFPN-48 | 7×7×0.55 | 100MHz | 512KB/128KB | 1.7V~3.6V | ART加速器, 低功耗, Batch Acquisition Mode | 高性能低功耗便携设备 |
| STM32F401CCU6 | Cortex-M4 FPU | UFQFPN-48 | 7×7×0.55 | 84MHz | 256KB/64KB | 1.7V~3.6V | 性价比高, 丰富外设 | 通用中性能应用 |
| STM32F103CBT6 | Cortex-M3 | LQFP-48 | 7×7 | 72MHz | 128KB/20KB | 2V~3.6V | 经典"蓝色药丸"MCU, 丰富外设, 成熟生态, USB2.0 FS | 通用控制、USB外设、入门级MCU应用 |
| STM32G431CBU6 | Cortex-M4 FPU | UFQFPN-48 | 7×7×0.55 | 170MHz | 128KB/32KB | 1.71V~3.6V | 数学加速CORDIC+FMAC, 4×12bit ADC(4MSps), 3×OPAMP, 4×DAC, UCPD, USB FS | 电机控制、数字电源、高精度模拟 |
| STM32G431CBT6 | Cortex-M4 FPU | LQFP-48 | 7×7 | 170MHz | 128KB/32KB | 1.71V~3.6V | 同G431CBU6, LQFP封装易手工焊接 | 电机控制、数字电源、通用控制 |
| STM32G031G8U6 | Cortex-M0+ | UFQFPN-28 | 4×4×0.6 | 64MHz | 64KB/8KB | 1.7V~3.6V | 2×I2C, 2×SPI/I2S, 2×USART, 12bit ADC 2.5MSps, VBAT, 低功耗 | 低成本IoT、通用控制、电池供电设备 |
| STM32G031F8P6 | Cortex-M0+ | LQFP-48 | 7×7 | 64MHz | 64KB/8KB | 1.7V~3.6V | 44 GPIO, 2×I2C, 2×SPI/I2S, 2×USART, 12bit ADC 2.5MSps, VBAT, 低功耗 | 低成本IoT、通用控制、更多IO需求场景 |
| STM32G474CEU6 | Cortex-M4 FPU | UFQFPN-48 | 7×7×0.55 | 170MHz | 512KB/128KB | 1.71V~3.6V | FPU+DSP, 5×12bit ADC(4Msps, 42通道), 7×DAC, 7×比较器, 6×运放(PGA), 3×FDCAN, HRTIM 184ps分辨率, CORDIC+FMAC数学加速器 | 数字电源、电机控制(FOC)、光伏逆变器、无线充电、工业变频器 |

### 9.7 Rockchip RV系列

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 关键参数 | 适用场景 |
|---|---|---|---|---|---|
| RV1106G2 | ARM Cortex-A7 + MCU | QFN-128 | — | 高性能AIoT SoC, 内置NPU, 支持摄像头接口 | 智能摄像头、AIoT网关、边缘计算 |
| RV1106G3 | ARM Cortex-A7 + MCU | QFN-128 | — | 类似G2, 性能/内存配置差异 | 智能摄像头、AIoT |
| RV1103G1 | ARM Cortex-A7 | QFN-88 | — | 入门级AIoT SoC, 内置NPU | 入门级智能摄像头、AIoT |
| RV1103 | ARM Cortex-A7 | QFN-88 | — | 入门级AIoT SoC, 内置NPU, RV1103G1基型 | 入门级智能摄像头、AIoT |
| RK3506G2 | ARM Cortex-A7 + MCU + NPU | QFN-128 | — | 入门级AIoT SoC, 内置NPU, 支持ISP/摄像头, H.264/H.265编解码 | 入门级智能摄像头、AIoT网关、智能门铃 |
| RK3506B | ARM Cortex-A7 + MCU + NPU | QFN-128 | — | 入门级AIoT SoC变体, 内置NPU, 支持ISP/摄像头 | 入门级AIoT、智能摄像头 |

---

## 10. 电机驱动

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| DRV8837DSGR | TI | WSON-8 | 2×2 | VM:0~11V, VCC:1.8V~7V | H桥, 1.8A max, RDS(on) 280mΩ, 支持PWM/IN1-IN2控制 | 摄像头、消费电子、玩具、低电压电机 |
| DRV8872DDAR | TI | SOIC-8 | 4.9×3.9 | 0~32V | H桥, 3.6A peak, 电流控制, 过热/过流保护 | 打印机、扫描仪、阀门控制、工业自动化 |
| DRV8871DDAR | TI | SOIC-8 | 4.9×3.9 | 0~37V | H桥, 3.6A peak, 内置电流检测 | 类似DRV8872, 替代型号 |
| SS8837T | — | — | — | — | H桥电机驱动, 兼容DRV8837 | 国产替代、低电压电机驱动 |
| DRV8835DSSR | TI | WSON-12 (DSS) | 3×3 | VM:2V~11V, VCC:1.8V~7V | 双H桥, 1.5A峰值/桥, RDS(on) 305mΩ(HS+LS), PH/EN或PWM控制, 睡眠电流10nA | 双路有刷电机驱动、步进电机、玩具、消费电子 |
| DRV8300DRGER | TI | VQFN-24 | 4×4 | GVDD:5~20V, SHx: up to 100V | 三相BLDC栅极驱动, 750mA拉/1.5A灌电流, 可调死区时间 | 三相BLDC/PMSM电机、电动工具、风扇控制 |

---

## 11. 音频

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TPA3255DDVR | TI | HTSSOP-44 | 14×8.1 | 18V~53.5V | 315W立体声@4Ω/10%THD, Class-D, PurePath Ultra-HD, THD+N 0.006% | 高保真音响、家庭影院、有源音箱 |
| TPA3221DDVR | TI | HTSSOP-44 (DDV) | 14×8.1 | 7V~30V | Class D, 2×105W@4Ω BTL/1×208W@2Ω PBTL, 闭环反馈, 100kHz带宽, 0.02% THD+N@1W, 可选增益18/24/30/34dB | 高保真大功率音响、家庭影院、有源音箱 |
| TAS5805MPWPR | TI | HTSSOP-28 | 9.7×4.4 | 4.5V~26V | 智能功放, I²C控制, 内置DSP, 闭环反馈 | 智能音箱、带DSP处理的音频系统 |
| TPA3116D2DADR | TI | HTSSOP-32 | 11×6.2 | 4.5V~26V | 50W立体声@4Ω, Class-D, 高效 | 中功率有源音箱、蓝牙音箱 |
| TPA3118D2DAPR | TI | HTSSOP-32 (DAP) | 11×6.2 | 4.5V~26V | Class D立体声, 30W@4Ω/15W@8Ω, 高效, 软静音 | 中功率有源音箱、蓝牙音箱 |
| TPA3138D2PWPR | TI | HTSSOP-28 | 9.7×4.4 | 4.5V~14.4V | 20W立体声@4Ω, Class-D, 超小封装 | 紧凑型有源音箱、便携音响 |
| PAM8610 | Diodes Inc | SOP-16/QFN-16 | 10.2×6.4 / 4×4 | 6V~14V | 2×3W@12V/8Ω, Class D立体声功放, 效率88%, 过载/热保护 | 车载音频、家庭影院、便携音箱 |
| MAX98357AETE+ | Analog Devices(ADI) | TQFN-16 | 3×3×0.75 | 2.5V~5.5V | 数字PCM输入Class D功放, 3.2W@4Ω/5V, 效率92%, I2S/Left-Justified/TDM, 无需MCLK, 无滤波 | 智能音箱、笔记本、IoT设备、便携音响 |
| PAM8403 | Diodes Inc | SOP-16/QFN-16 | 10.2×6.4 / 4×4 | 4.5V~5.5V | 2×2W@5V/8Ω, Class D立体声功放, 效率85%, 20Hz~20kHz | 蓝牙音箱、便携音频、USB音箱 |
| NS4168 | Nsiway(纳芯威) | ESOP-8 | — | 3V~5.5V | 2.5W@4Ω, I2S数字输入单声道Class D功放, 效率80%@2.5W, THD+N 0.2%@1W, 8k~96kHz采样率, NCN防失真, 过流/过温/欠压保护 | 蓝牙音箱、智能音箱、MP3/PMP、数码相框 |
| AW3410S | Awinic(上海艾为) | SOP-8/QFN-20 | 5.3×6.2 / 4×4 | 2.7V~5.5V | Class D音频功放, THD+N<1%, SNR>85dB, 效率85~90%, 内置保护电路 | 便携音箱、蓝牙音箱、智能手机/平板音频 |
| LM386 | TI(德州仪器) | DIP-8/SOIC-8 | 9.3×6.4 / 5.3×6.0 | 4V~18V | 700mW@9V/4Ω, Class-AB音频功放, 增益20~200倍可调, THD+N<0.2%, 静态8mA | 便携音频放大、小型扬声器、报警器 |

### 11.2 音频DAC/ADC/编解码器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| PCM5102APWR | TI | TSSOP-20 (PW) | 6.5×6.4 | 3.3V | 24bit立体声DAC, 112dB SNR, 32bit/384kHz PCM, 2.1Vrms输出, 集成PLL, 免MCLK | A/V接收器、BD/DVD播放器、汽车信息娱乐 |
| PCM5100 | TI | TSSOP-20 | 6.5×6.4 | 3.3V | 24bit立体声DAC, 100dB SNR, 免隔直电容, 集成PLL | 数字电视、机顶盒、音频接收器 |
| PCM1808PWR | TI | TSSOP-14 (PW) | 4.4×5 | 3.3V~5V | 24bit立体声ADC, 99dB SNR, -93dB THD+N, 8~96kHz, I2S输出 | 音频录制、数字混音、音频接口 |
| ES9018 | ESS Technology | — | — | — | 32bit 8通道DAC, 超高指标 | 高端音频DAC(待补充详细封装参数) |
| ES9023P | ESS Technology | SOP-16 | 9.9×3.9 | 3.3V~3.6V | 24bit立体声DAC, HyperStream架构, 112dB DNR, 2Vrms直驱输出, 无抖动, I2S | 蓝光播放器、CD/DVD播放器、机顶盒、音频接收器 |
| ES8311 | Everest Semi(顺芯) | QFN-20 | 3×3 | 1.8V~3.3V | 24bit音频CODEC, ADC 100dB SNR/-93dB THD+N, DAC 110dB SNR/-80dB THD+N, 8~96kHz, I2S/PCM, 内置PLL, 14mW功耗 | 车载、IP Camera、DVR、便携音频 |
| ES7243E | Everest Semi(顺芯) | QFN-20 | 3×3 | 1.8V~3.3V | 低功耗立体声音频ADC, 24bit, 103dB SNR, 8~96kHz, I2S输出, 内置PLL, 支持差分/单端输入, 低功耗 | 麦克风阵列、智能音箱、AI语音识别、安防监控 |
| CS4344 | Cirrus Logic | TSSOP-10 | 3.1×3.1 | 3.3V/5V | 24bit立体声DAC, 105dB动态范围, -90dB THD+N, 2k~192kHz, Popguard | DVD/BD播放器、数字电视、机顶盒、汽车音响 |
| TLV320AIC3204IRHBR | TI | VQFN-32 (RHB) | 5×5 | 1.65V~3.6V | 超低功耗立体声音频CODEC, PowerTune™, 93dB ADC/100dB DAC SNR, 192kHz, I2S/DSP/TDM, 6入/4出, 内置PLL, 耳机功放 | 便携音频、VoIP、智能音箱、录音笔 |
| TLV320ADC3101IRGER | TI | VQFN-24 (RGE) | 4×4 | 1.65V~3.6V | 低功耗立体声音频ADC, 92dB SNR, 内嵌miniDSP, 96kHz, I2S/DSP/PCM/TDM, 6路模拟输入, 数字麦克风 | 麦克风阵列、语音识别、便携录音、音频分析 |

### 11.3 音频处理器/语音芯片

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| WT2605CX | 唯创 | QFN-32 | 4×4 | 2.8V~5V | 双模蓝牙音频芯片, 24MHz晶振, DAC SNR 95dB, ADC SNR 79dB, UART AT指令控制, 支持蓝牙音频+通话+本地播放 | 蓝牙音箱、车载音响、智能家居 |
| WT8509 | — | — | — | — | 音频处理芯片 | 待补充详细参数 |

### 11.4 运算放大器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| OPA1656IDR | TI | SOIC-8 (D) | 4.9×3.9 | 4.5V~36V | FET输入音频运放, Burr-Brown™, 53MHz GBW, 24V/μs压摆率, 超低噪声4.3nV/√Hz, THD+N 0.000029%, 轨到轨输出, 每通道3.9mA | 音频前置放大、有源滤波器、DAC缓冲、专业音频设备 |
| LMV358IDR | TI | SOIC-8 (D) | 4.9×3.9 | 2.7V~5.5V | 低压双路运放, 1MHz GBW, 1V/μs压摆率, 失调电压7mV, 轨到轨输出, 每通道105μA | 便携设备、双通道信号调理、有源滤波 |
| LMV321AIDBVR | TI | SOT-23-5 (DBV) | 2.9×1.6 | 2.5V~5.5V | 低压单路运放(改进版), 1MHz GBW, 1.7V/μs压摆率, 失调电压4mV, 轨到轨输出, 静态80μA, EMI强化 | 便携设备、传感器信号调理、电池供电系统 |
| LMV321IDBVR | TI | SOT-23-5 (DBV) | 2.9×1.6 | 2.7V~5.5V | 低压单路运放, 1MHz GBW, 1V/μs压摆率, 失调电压7mV, 轨到轨输出, 静态130μA | 便携设备、通用信号调理、低成本应用 |
| OPA855IDSGR | TI | WSON-8 (DSG) | 2×2 | 3.3V~5.25V | 8GHz GBW跨阻放大器, 2750V/μs压摆率, 0.98nV/√Hz噪声, 最小增益7V/V, 关断功能, 17.8mA静态电流 | LiDAR接收前端、光通信TIA、高速光电检测、高速ADC驱动 |

### 11.5 仪表放大器 (INA)

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| INA350ABSIDDFR | TI | SOT-23-THN-8 (DDF) | 2.9×1.6 | 1.8V~5.5V | 低功耗选择增益仪表放大器, 增益10/20/50可选, 100μA IQ, 100kHz BW, 1.2mV失调 | 电池供电传感器、便携医疗、低成本信号调理 |
| INA828IDR | TI | SOIC-8 (D) | 4.9×3.9 | 4.5V~36V | 精密仪表放大器, 50μV失调, 7nV/√Hz噪声, 140dB CMRR, 600μA IQ, 2MHz BW, 增益1~1000 | 精密数据采集、工业传感器、桥式传感器、医疗仪器 |
| INA826AIDGKR | TI | VSSOP-8 (DGK) | 3×3 | 3V~36V | 精密仪表放大器, 150μV失调, 18nV/√Hz噪声, 120dB CMRR, 200μA IQ, 1MHz BW | 工业信号调理、数据采集、电池供电设备 |
| INA333AIGDKR | TI | VSSOP-8 (DGK) | 3×3 | 1.8V~5.5V | 微功耗零漂移仪表放大器, 25μV失调, 50nV/√Hz噪声, 100dB CMRR, 50μA IQ, 150kHz BW | 便携医疗、电池供电传感器、热电偶测量 |
| PGA281AIPWR | TI | TSSOP-16 (PW) | 5×4.4 | 10V~36V | 零漂移可编程增益放大器, 0.125~42dB增益, 0.03μV/°C失调漂移, 20nV/√Hz噪声, 6MHz BW, 差分输出 | 工业过程控制、PLC模拟输入模块、精密数据采集 |

### 11.6 ADC模数转换器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| AD7684BRMZ | ADI(亚德诺) | MSOP-8 | 3.0×4.9×1.1 | 2.7V~5.5V | 16bit SAR ADC, 250kSPS, 单通道伪差分输入, SPI, 低功耗3.5mW@5V/100kSPS, INL ±2LSB, 无流水线延迟 | 电池供电数据采集、便携式仪器、工业过程控制、医疗设备 |
| AD7680ARMZ | ADI(亚德诺) | MSOP-8 | 3.0×4.9×1.1 | 2.7V~5.5V | 16bit SAR ADC, 100kSPS, 单通道真差分输入, SPI, 低功耗4mW@5V, INL±2.5LSB, 无流水线延迟, 关断电流1nA | 低功耗数据采集、电池监测、便携仪器、传感器接口 |
| ADS131M08IPBS | TI | TQFP-32 (PBS) | 5×5 | 2.7V~3.6V(模拟), 1.65V~3.6V(数字) | 24bit ΔΣ ADC, 8通道同步采样, 32kSPS, 101dB SNR, PGA, 内部VREF, SPI | 电能计量、电网保护、多相电机电流检测、电池测试 |
| ADS1220IPWR | TI | TSSOP-16 (PW) | 5×4.4 | 2.3V~5.5V | 24bit ΔΣ ADC, 4通道, 2kSPS, PGA(1~128), 内部VREF, 2路IDAC, SPI | 精密温度测量(热电偶/RTD/热敏电阻)、桥式传感器、便携仪表 |
| ADS1220IRVAR | TI | VQFN-16 (RVA) | 3.5×3.5 | 2.3V~5.5V | 同ADS1220IPWR, VQFN-16小封装, 24bit ΔΣ ADC, 4通道, 2kSPS, PGA, 内部VREF, 2路IDAC | 空间受限的精密温度测量、传感器信号调理 |
| ADS1115IDGSR | TI | VSSOP-10 (DGS) | 3×3 | 2V~5.5V | 16bit ΔΣ ADC, 4通道, 860SPS, PGA, 内部VREF/振荡器, I²C, 比较器, 0.3mW | 便携式数据采集、电池监测、环境监测、IoT传感器 |
| ADS1118IDGSR | TI | VSSOP-10 (DGS) | 3×3 | 2V~5.5V | 16bit ΔΣ ADC, 4通道, 860SPS, PGA, 内部VREF/温度传感器, SPI | 热电偶测量、温度监测、便携数据采集 |
| AD7606BSTZ | ADI | LQFP-64 | 10×10 | 4.75V~5.25V | 16bit SAR ADC, 8通道同步采样, 200kSPS, 真双极性±10V/±5V输入, 内置钳位保护, 数字滤波器 | 电力线监测、继电保护、多相电机控制、数据采集系统 |

### 11.7 DAC数模转换器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| DAC8562SDGSR | TI | VSSOP-10 (DGS) | 3×3 | 2.7V~5.5V | 16bit双通道DAC, 0~5.5V输出, 7μs建立时间, 内部2.5V基准(4ppm/°C), SPI, 超低毛刺, 0.5mW | 精密电压调节、自动测试设备、过程控制、便携仪表 |
| DAC8551IADGKR | TI | VSSOP-8 (DGK) | 3×3 | 2.7V~5.5V | 16bit单通道DAC, 0~5.5V输出, 8μs建立时间, 外部基准, SPI, 超低毛刺, 1.35mW | 精密电压输出、工业控制、数据采集、传感器校准 |
| DAC8552IDGKR | TI | VSSOP-8 (DGK) | 3×3 | 2.7V~5.5V | 16bit双通道DAC, 0~5.5V输出, 8μs建立时间, 外部基准, SPI, 超低毛刺 | 多通道精密输出、工业自动化、便携设备 |
| DAC7311IDCKR | TI | SC70-6 (DCK) | 2.1×2.0 | 2V~5.5V | 12bit单通道DAC, 0~5.5V输出, 6μs建立时间, 外部基准, SPI, 80μA超低功耗, 0.14mW | 电池供电设备、传感器偏置、便携医疗、低功耗控制 |

### 11.8 数字电位器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| MCP41010 | Microchip | DIP-8/SOIC-8 | 9.3×6.4 / 4.9×3.9 | 2.7V~5.5V | 10kΩ数字电位器, 8位(256抽头), SPI接口, 单通道, 典型温度系数±800ppm/°C | 音频增益控制、可调滤波器、LCD对比度、可编程电压基准 |
| MCP4017 | Microchip | SC70-6 | 2.1×2.0 | 1.8V~5.5V | 10kΩ/50kΩ/100kΩ数字电位器, 7位(128抽头), I²C接口, 单通道, 低温度系数±50ppm/°C | 紧凑型可调偏置、传感器校准、便携设备、音量控制 |
| MCP4018 | Microchip | SC70-6 | 2.1×2.0 | 1.8V~5.5V | 同MCP4017, 5kΩ/10kΩ/50kΩ/100kΩ可选, 7位(128抽头), I²C, 超小SC70封装 | 同MCP4017, 不同阻值选择 |

### 11.9 其他音频器件

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| MAX9814 | Maxim(ADI) | TQFN-32 | 5×5 | 2.7V~5.5V | 麦克风前置放大器, 集成AGC, I²S数字输出, 8~48kHz采样率, 16bit ADC | 语音识别、智能音箱、录音笔 |
| MAX4466 | Maxim(ADI) | SOT-23-5 | 2.9×1.6 | 2.4V~5.5V | 微功耗麦克风前置放大器, 可调增益, 200kHz GBW, 轨到轨输出, PSRR 60dB@1kHz, 静态22μA | 麦克风信号放大、语音采集、音频信号调理 |

---

## 12. 电池管理/充电芯片

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| BQ25895RTWR | TI | QFN-24 | 4×4 | 3.9V~14V | I²C控制, 5A快充, 93%效率@2A, 支持USB/高压适配器/OTG升压 | 智能手机、平板、移动电源、快充设备 |
| BQ25606RGER | TI | VQFN-24 | 4×4 | 3.9V~13.5V | 独立3A开关充电, 92%效率@2A, 支持OTG升压, USB SDP/CDP/DCP检测 | 单节锂电充电、移动电源、便携设备 |
| BQ24610RGER | TI | VQFN-24 | 4×4 | 4.5V~28V | 1-6节锂电/镍氢充电控制器, 同步降压充电, I²C控制 | 笔记本电脑、电动工具、多节电池充电 |
| IP2326 | INJOINIC(英集芯) | QFN-24 | 4×4 | 4.5V~9.5V | 2/3节串联锂电升压充电IC, 15W快充, 集成功率MOS, 同步开关架构, 500kHz, 1.5A充电, 效率94%@5V→8V/1A, 支持QC3.0请求, 电池均衡, NTC保护 | 蓝牙音箱、电动工具、扫地机器人、便携设备、智能家居 |
| IP5306 | INJOINIC(英集芯) | ESOP-8 | 4.9×3.9 | 4.65V~5.5V | 2.1A充电/2.4A放电, 移动电源SoC, 集成升压+充电管理+电量指示 | 移动电源、便携充电设备 |
| IP5306_CK | INJOINIC(英集芯) | ESOP-8 | 4.9×3.9 | 4.65V~5.5V | CK后缀变体版本, 功能参数同IP5306, 可能固件/充电逻辑差异 | 移动电源、便携充电设备、IP5306低成本替代 |
| IP2366 | INJOINIC(英集芯) | QFN-32 | 4×4 | — | 移动电源SoC, 支持PD快充, 双向升降压, 集成充电管理+放电+电量显示 | 移动电源、PD快充设备 |
| IP2368 | INJOINIC(英集芯) | QFN-40 | 5×5 | — | 移动电源SoC, 支持PD3.0/QC4+, 双向升降压, 多协议快充, 集成电量计 | 大功率移动电源、多协议快充 |
| BQ24076RGRR | TI | QFN-16 | 3×3 | 4.35V~10.5V | 1.5A线性充电, 电源路径管理 | 单节锂电、标准充电应用 |
| BQ24075RGRR | TI | QFN-16 | 3×3 | 4.35V~10.5V | 1.5A线性充电, 电源路径管理 | 单节锂电、标准充电应用 |
| BQ24074RGRR | TI | QFN-16 (RGR) | 3×3 | 4.35V~10.5V | 1.5A线性充电, 电源路径管理, DPPM, USB OTG升压, 28V输入 | 单节锂电、空间受限的充电应用 |
| BQ24073RGRR | TI | QFN-16 | 3×3 | 4.35V~10.5V | 1.5A线性充电, 电源路径管理 | 单节锂电、标准充电应用 |
| BQ24072RGRR | TI | QFN-16 | 3×3 | 4.35V~10.5V | 1.5A线性充电, 支持USB OTG | 单节锂电、需OTG功能的应用 |
| BQ24040DSQR | TI | WSON-10 (DSQ) | 2.5×2.5×0.75 | 3.5V~6.5V | 1A线性单节锂电充电器, 4.2V浮充, ±0.5%充电精度, 输入OVP(6.5V), VINDPM, 热调节, NTC温度监测, 独立工作(无需I²C) | 便携设备、可穿戴设备、蓝牙耳机充电、IoT传感器节点 |
| ME4084BN8BG | Microne(南京微盟) | DFN-8 | 2.0×2.0×0.8 | 4.0V~6.5V | 1A线性锂电池充电器, 4.2V浮充电压, ±1%充电电压精度, 热调节保护, 充电电流可编程(最大 800mA 外置电阻), 输入OVP, 自动再充电, 软启动 | TWS耳机充电仓、便携式设备、低功耗手持设备、单节锂电充电管理 |
| ME4084AM5G | Microne(南京微盟) | SOT-23-5 | 2.9×1.6 | 4V~6.5V | 600mA线性锂电池充电器, 4.2V浮充电压, ±1%充电电压精度, 热调节保护, 充电电流可编程(最大 600mA 外置电阻), 输入OVP, 自动再充电, 充电状态指示 | TWS耳机充电仓、便携设备、蓝牙设备、低成本消费电子 |
| ME4075AM5G | Microne(南京微盟) | SOT-23-5 | 2.9×1.6 | 4V~6.5V | 800mA线性磷酸铁锂(LiFePO4)充电器, 3.6V浮充电压, 热调节, 充电电流可编程, 自动再充电, 充电状态指示 | LiFePO4电池充电、充电座、蓝牙设备、便携设备 |
| TP4054 | 多家(国产) | SOT-23-5 | 2.9×1.6 | 4.2V~6.5V | 500mA线性锂电池充电器, 4.2V浮充, ±1%精度, 热调节, 充电电流可编程(外置电阻), 自动再充电, 充电状态指示, 外围极简 | TWS耳机充电仓、蓝牙设备、MP3播放器、低成本便携消费电子 |
| MAX17048G | Maxim(ADI) | TDFN-8 | 2×2 | — | 单节Li+电池电量计(ModelGauge), 微功耗 | 锂电池电量监测、便携设备电量显示 |
| BQ25170DSGR | TI | WSON-8 (DSG) | 2×2 | 3V~6.5V | 800mA线性单节锂电/LiFePO4充电器, 独立工作, 热调节, NTC温度监测, 可编程充电电流, 输入OVP 30V耐压 | 便携设备、可穿戴设备、IoT传感器、单节锂电/LiFePO4充电 |
| BQ27441DRZR-G1 | TI | SON-12 (DRZ) | 2.5×4.0 | 2.7V~5.5V | 单节Li+电量计, Impedance Track™, I²C, ±1%精度, 10mΩ感测电阻, 电池认证SHA-1/HMAC | 智能手机、TWS耳机、无人机、便携设备 |
| BQ27542DRZR-G1 | TI | SON-12 (DRZ) | 2.5×4.0 | 2.7V~5.5V | 单节Li+高精度电量计, Impedance Track™, ±1%精度, I²C+HDQ, SHA-1/HMAC认证, 100~14500mAh | 医疗设备、高端TWS、工业电池包 |
| AXP2101 | X-Powers(芯智汇) | QFN-32 | 4×4 | 2.9V~5.5V | 全集成电源管理PMIC, 3路DC-DC+5路LDO, 支持锂电池充电, I²C控制, 12bit ADC | 平板、便携设备、多电源系统 |
| GEK100 | 广昇科技 | SOT-23-6 | 2.9×1.6 | 1.8V~3.6V | 按键电源管理IC, 支持短按/长按/双击, 关机0功耗, 硬件复位, 200μA工作/2nA静态 | 电池供电设备的按键开关机控制 |
| BL1532 | — | QFN | — | — | 电源管理IC | 待补充详细参数 |
| EC190708 | — | — | — | — | 电源保护/监控IC | 待补充详细参数 |

---

## 13. 其他器件

### 13.1 二极管

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 关键参数 | 适用场景 |
|---|---|---|---|---|---|
| BAT54C | DIOTEC/Nexperia等 | SOT-23 | 2.9×1.6 | 肖特基二极管, 30V VRRM, 200mA, VF=1V@100mA, 2μA漏电流, 快速开关 | 低压高频整流、续流、极性保护、钳位保护 |
| DSS14 | — | SMA | 5.2×2.6 | 肖特基二极管, 40V VRRM, 1A, VF=0.55V@1A, 低漏电流, 快速开关 | 续流保护、反极性保护、DC-DC输出整流 |

### 13.2 传感器接口/键盘控制

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TCA8418RTWR | TI | WQFN-24 | 4×4 | 1.65V~3.6V | I²C键盘扫描IC, 18 GPIO支持80键, 10字节FIFO, 消抖50μs, 待机3μA | 键盘矩阵扫描、QWERTY键盘、GPIO扩展 |

### 13.3 电源监控/电流传感器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| INA226AIDGSR | TI | VSSOP-10 (DGS) | 3×3 | 2.7V~5.5V | 电流/电压/功率监控, I²C, 16bit, 0~36V共模, 0.1%增益误差, 10μV失调, 16个可编程地址 | 电源监控、电池管理、电流检测 |
| INA228AQDGSRQ1 | TI | VSSOP-10 (DGS) | 3×3 | 2.7V~5.5V | 车规数字电源监控器, 20bit ΔΣ ADC, 85V共模, I²C, 0.1%精度, 能量/电荷累积, E³驱动, 温度传感器 | 汽车电源监控、自动驾驶域控、48V电源管理 |
| INA181A1IDBVR | TI | SOT-23-6 (DBV) | 2.9×1.6×1.15 | 2.7V~5.5V | 双向电流检测放大器, 共模-0.2V~26V, 增益20V/V(A1), 带宽350kHz, 失调±150μV, CMRR 84dB, IQ 260μA | 低电流精密检测、电池充放电监测、便携设备电源轨监控 |
| INA181A2IDBVR | TI | SOT-23-6 (DBV) | 2.9×1.6×1.15 | 2.7V~5.5V | 双向电流检测放大器, 共模-0.2V~26V, 增益50V/V(A2), 带宽210kHz, 失调±150μV, CMRR 84dB, IQ 260μA | 高/低侧电流检测、电机电流监测、电源轨电流监控、电池充放电检测 |
| INA180A3IDBVR | TI | SOT-23-5 (DBV) | 2.9×1.6×1.15 | 2.7V~5.5V | 单向电流检测放大器, 共模-0.2V~26V, 增益100V/V(A3), 带宽210kHz, 失调±150μV, CMRR 84dB, IQ 260μA | 低侧电流检测、过流保护、电源轨监测、电机保护 |
| MAX4080SASA | Maxim(ADI) | SOIC-8 | 4.9×3.9×1.5 | 4.5V~76V | 单向高侧电流检测放大器, 共模4.5V~76V, 增益60V/V(S), 带宽200kHz, 失调±100μV, CMRR 100dB, IQ 0.9mA | 汽车48V系统、工业高压电源监控、电信基站、高边电流检测 |
| MAX4080TASA | Maxim(ADI) | SOIC-8 | 4.9×3.9×1.5 | 4.5V~76V | 单向高侧电流检测放大器, 共模4.5V~76V, 增益20V/V(T), 带宽250kHz, 失调±100μV, CMRR 100dB | 汽车48V系统、工业高压电流检测、电源保护、高边监控 |
| INA229AIDGSR | TI | VSSOP-10 (DGS) | 3×3 | 2.7V~5.5V | 85V 20bit超精密数字电源监控器, SPI接口, 1μV失调, 154dB CMRR, 能量/电荷/功率累积, 告警输出 | 精密电源监控、服务器电源、电池测试设备 |
| INA190A2IDCKR | TI | SC70-6 (DCK) | 2.1×2.0 | 1.7V~5.5V | 40V双向超精密电流检测放大器, 15μV失调, 增益50V/V, 132dB CMRR, 0.09mA IQ, 零漂移 | 低侧/高侧电流检测、电池供电监测、电源轨电流检测 |
| INA240A1PWR | TI | TSSOP-8 (PW) | 3.0×4.4×1.1 | 2.7V~5.5V | 增强型PWM抑制电流检测放大器, 双向, 增益20V/V(A1), 共模-4V~80V, 失调±25μV, CMRR 120dB, 带宽400kHz, 增益误差0.2%, 静态2.4mA, -40~125°C | 电机相电流检测(含PWM抑制)、螺线管驱动电流检测、电池充放电双向监测、高/低侧电流检测 |
| INA240A1DR | TI | SOIC-8 (D) | 4.9×3.9×1.75 | 2.7V~5.5V | 电气参数同INA240A1PWR, 增益20V/V(A1), 共模-4V~80V, CMRR 120dB, 带宽400kHz, SOIC-8封装 | 同INA240A1PWR, SOIC-8传统PCB布局偏好 |
| INA240A2PWR | TI | TSSOP-8 (PW) | 3.0×4.4×1.1 | 2.7V~5.5V | 增强型PWM抑制电流检测放大器, 双向, 增益50V/V(A2), 共模-4V~80V, 失调±25μV, CMRR 120dB, 带宽400kHz, 增益误差0.2%, 静态2.4mA, -40~125°C | 电机相电流检测(PWM抑制)、中等电流范围(数A~数十A)精密检测、电池监测 |
| INA240A2DR | TI | SOIC-8 (D) | 4.9×3.9×1.75 | 2.7V~5.5V | 电气参数同INA240A2PWR, 增益50V/V(A2), 共模-4V~80V, CMRR 120dB, 带宽400kHz, SOIC-8封装 | 同INA240A2PWR, SOIC-8传统PCB布局偏好 |

### 13.4 USB PD控制器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| HUSB238 | — | DFN-10L | 3×3 | 3V~25V | USB PD3.0 Sink控制器, 支持Type-C, 最高100W, 支持Apple Divider/BC1.2, I²C接口 | PD受电设备、无线充电器、IoT设备、无人机 |

### 13.5 信号发生器/DDS

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| AD9833 | ADI(亚德诺) | MSOP-10 | 3×3 | 2.3V~5.5V | 可编程波形发生器(DDS), 28bit频率寄存器, 正弦/三角/方波输出, SPI接口, 25MHz主频 | 函数发生器、RF调制、音频合成、测试仪表 |

### 13.6 其他信号链/电源IC

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| SGM58031 | SG Micro(圣邦微) | MSOP-10 | 3×3 | 2V~5.5V | 16bit ΔΣ ADC, 4通道, 860SPS, PGA, 内部VREF, I²C, 兼容ADS1115 | 精密数据采集、传感器监测、替代ADS1115 |
| SGM3204 | SG Micro(圣邦微) | SOT-23-5 | 2.9×1.6 | 2.7V~5.5V | 电荷泵电压反相器, 输出- Vin, 50mA输出, 250kHz开关频率 | 产生负压供运放、LCD偏置、音频系统 |
| HLW8110 | HLW(钜泉光电) | SOP-16 | 10.0×4.0×1.5 | 3.0V~3.6V | 单相电能计量IC, 有功/无功/视在功率, 325mV/170mV/85mV可编程增益, 5000:1动态范围, I²C/SPI接口, 精度1级/2级 | 智能电表、能源监测、电力仪表、智能插座、配电监测 |
| TM771 | TM(天微电子) | SOP-8 | 4.9×3.9×1.5 | 2.7V~5.5V | 单通道24bit ΔΣ ADC, 内置PGA(32/64/128), 片内低温漂基准, 差分输入, 超低噪声, 输出速率10Hz/40Hz/640Hz可选, 两线串口 | 电子秤、压力传感器、应变片桥式传感器、工业称重 |
| AUDM1201ARC | — | — | — | — | 音频相关芯片(推测), 精确参数待确认 | 待确认 |
| 3PA1030 | 3PEAK(思瑞浦) | — | — | — | 精密运放/比较器(待补充详细参数) | 待补充详细参数 |
| HY3131 | — | — | — | — | 电池管理/BMS AFE芯片(待补充详细参数) | 待补充详细参数 |

---

## 14. 🔍 如何索引和添加新元器件

### 14.1 电路设计时的查询方法

当设计一个新电路时，按以下步骤使用本文档：

1. **确定需求**：明确所需元件的类型（如"3.3V LDO"、"2A降压DC-DC"、"带USB PD的MCU"）
2. **搜索关键词**：
   - 按**电压**：搜索"3.3V"、"5V"、"1.8V"
   - 按**电流**：搜索"2A"、"500mA"、"3A"
   - 按**封装**：搜索"QFN"、"SOT-23"、"LQFP"
   - 按**类型**：搜索"LDO"、"DC-DC"、"MOSFET"、"加速度计"
   - 按**厂商**：搜索"TI"、"WCH"、"STMicro"
3. **对比参数**：找到候选型号后，对比输入电压范围、输出电流、封装尺寸、静态电流等关键参数
4. **确认兼容性**：检查封装引脚间距是否与PCB工艺兼容（如0.4mm pitch需要更高精度PCB）

### 14.2 添加新元器件的方法

当需要添加新元器件到本文档时，请按以下格式操作：

**步骤1**：确定元器件所属分类（参见目录第1~13节）

**步骤2**：在对应分类的表格末尾添加新行，包含以下**必填字段**：

| 字段 | 说明 | 示例 |
|---|---|---|
| 型号 | 完整的厂商型号 | TPS62840DLCR |
| 厂商 | 制造商名称 | TI (德州仪器) |
| 封装 | 封装名称+引脚数 | WSON-10 |
| 封装尺寸 | 长×宽×高(mm) | 3×3×0.75 |
| 供电电压 | 工作电压范围 | 1.8V~6.5V |
| 关键参数 | 核心性能参数，用逗号分隔 | 750mA, 2MHz, 效率95%, I²C可调 |
| 适用场景 | 典型应用领域 | 可穿戴设备、低功耗IoT |

**步骤3**：如果找不到封装尺寸，按以下方式查找：
- 搜索 "[型号] datasheet 封装尺寸"
- 在厂商官网下载datasheet，查找"Package Dimensions"或"Mechanical Data"章节
- 记录封装代码（如SOT-23-5、WQFN-16等）和具体尺寸

**步骤4**：保存文档，确保新条目格式与已有条目一致（Markdown表格格式）

### 14.3 快速选型速查表

| 需求场景 | 推荐查阅章节 | 关键筛选条件 |
|---|---|---|
| 3.3V/1A LDO稳压 | §4.3 LDO | 输入≥5V, 输出3.3V, 电流≥1A |
| 5V→3.3V 1A降压 | §4.2 单路DC-DC | 输入5V, 输出3.3V, 电流≥1A |
| 单节锂电充电 | §12 电池管理 | 4.2V截止, 充电电流按需选择 |
| 锂电池电量监测 | §12 电池管理 | ModelGauge/库仑计 |
| 移动电源SoC | §12 电池管理 | 集成充放电+电量指示 |
| USB PD受电(100W) | §13.3 USB PD | HUSB238 |
| 三相BLDC电机驱动 | §10 电机驱动 | DRV8300 + 外部MOSFET |
| 小功率有刷电机驱动 | §10 电机驱动 | DRV8837/DRV8872 |
| 高保真音频功放 | §11 音频放大器 | TPA3255 (315W) |
| 中等功率音频功放 | §11 音频放大器 | TPA3116 (50W) |
| 紧凑型音频功放 | §11 音频放大器 | TPA3138 (20W) |
| 带DSP的智能功放 | §11 音频放大器 | TAS5805 |
| 高性能MCU (Cortex-M7) | §9.6 STMicro M7 | STM32H7系列 |
| 高性能MCU (Cortex-M33) | §9.6 STMicro M33 | STM32H5/U5系列 |
| 性价比MCU (Cortex-M4) | §9.3 Artery AT32F4 | AT32F4系列 |
| 超低功耗MCU | §9.6 STM32U5 | STM32U575 |
| RISC-V MCU + USB | §9.1 WCH CH32V | CH32V305等 |
| RISC-V MCU + PD | §9.2 WCH CH32X | CH32X035 |
| 低成本MCU (Cortex-M0+) | §9.4 PY32/HC32 | PY32F0/HC32F0 |
| 实时时钟RTC | §1 实时时钟 | PCF85063系列 |
| 三轴加速度计 | §2.1 加速度计 | QMA6100P / LIS2DW12 |
| 电子罗盘(磁力计) | §2.2 磁力计 | QMC6308 |
| 温湿度传感器 | §2.3 温湿度 | SHT40 |
| USB HUB扩展 | §3.1 USB HUB | CH338F(7口)/CH334P(4口) |
| USB转串口 | §3.2 USB转串口 | CH343P |
| LED矩阵驱动 | §8 LED驱动 | HTR3229 |
| 全彩LED灯带 | §8 LED驱动 | HD107S / SK9822 |
| SPI Flash存储 | §7 存储器件 | W25Q16JV (2MB) |
| I²C EEPROM | §7 存储器件 | M24C08 (1KB) |
| N-MOSFET (30V) | §5 MOSFET | CSD17313Q2 |
| P-MOSFET (-20V) | §5 MOSFET | CSD25402Q3A |
| 键盘扫描IC | §13.2 传感器接口 | TCA8418 |
| 肖特基二极管 | §13.1 二极管 | BAT54C (30V/200mA) |
| 电源管理PMIC(4路) | §4.1 PMIC | EA3059 |
| 升降压控制器 | §4.2 单路DC-DC | TPS63060/TPS63020 |
| 高精度电压基准 | §4.3 LDO | REF3044 (4.096V) |
| 低噪声LDO | §4.3 LDO | LP5912/LP5907/TLV767 |
| 双路±电源LDO | §4.3 LDO | TPS7A3901 |
| 8位串并转换 | §6 逻辑器件 | 74HC595D |
| AIoT SoC (带NPU) | §9.7 Rockchip RV | RV1106/RV1103 |

---

> **文档维护说明**：本文档应随项目进展持续更新。每次新增元器件时，务必同时更新对应章节的表格和§14.3快速选型速查表。建议定期用 `Ctrl+F` 检查是否有重复型号。
