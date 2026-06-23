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
5. [MOSFET功率管](#5-mosfet功率管)
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

### 3.3 USB信号开关/多路复用器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TS3USB221RSER | TI | UQFN-10 (RSE) | 2.6×1.8 | 2.3V~3.6V | USB2.0 1:2 MUX/DEMUX, 480Mbps, RON=6Ω, 高带宽1GHz, 低功耗30μA, ESD>2000V HBM | USB接口切换、手机、数码相机、带Hub的笔记本 |

### 3.4 蓝牙转串口

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| CH9141K | WCH(沁恒) | ESSOP-10 | 4.9×3.3 | 2.5V~3.3V | 串口蓝牙透传芯片, 1Mbps数据速率, -20dBm输出功率, 支持BLE, UART接口 | 蓝牙串口透传、无线串口替代、IoT蓝牙通信 |
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

### 4.2 单路DC-DC (降压/升压/升降压)

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 输入电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TPS62065DSGR | TI | WSON-8 | 2×2×0.75 | 2.9V~6V | 2A输出, 3MHz, 效率高达97%, 省电模式, 电源正常输出, 支持1mm电感 | 5V/3.3V系统电源轨、高密度PCB设计 |
| TLV62568DBVR | TI | SOT-23-5 (DBV) | 2.9×1.6 | 2.5V~5.5V | 1A同步降压, 1.5MHz, 效率90%+, 35μA IQ, 100%占空比, 内部补偿 | 空间受限的1A降压、RF/传感器供电 |
| TLV62569DBVR | TI | SOT-23-5 | 2.9×1.6 | 2.5V~5.5V | 2A输出, 1.5MHz, 效率95%, 省电模式, 静态电流35μA, 100%占空比 | 空间受限的高效降压、RF/传感器供电 |
| TPS56637RPAR | TI | QFN-10 | 3×3 | 4.5V~17V | 6A同步降压, 固定频率, 高电流密度 | 高电流密度的12V/5V降压、工业电源 |
| TPS54302DDCR | TI | SOT-23-6 | 2.9×1.6 | 4.5V~28V | 3A同步降压, 580kHz, 内置补偿 | 12V/24V工业总线降压、高电压输入降压 |
| TPS563201DDCR | TI | SOT-23-6 | 2.9×1.6 | 4.5V~17V | 3A同步降压, 固定频率, 高效 | 12V转5V/3.3V、机顶盒、DTV |
| TPS62840DLCR | TI | VSON-HR-8 (DLC) | 1.1×2 | 1.8V~6.5V | 降压, 750mA, 60nA IQ, DCS-Control, 16种VSET可选输出电压, PFM/PWM可选, STOP模式, 25nA关断电流 | 超低功耗IoT、射频友好型电源、电能表 |
| TPS63020DSJR | TI | VSON-14 (DSJ) | 3×3 | 1.8V~5.5V | 升降压, 2A持续/4A峰值, 2.4MHz, I²C可编程输出, 效率96% | 需要I²C动态调压的电池供电设备 |
| TPS63060DSCR | TI | WSON-10 | 3×3 | 2.5V~12V | 升降压, 2A持续/4A峰值, 固定3.4MHz, 效率>90% | 单节锂电升降压供电、电池电压波动大的场景 |
| TPS63802DLAR | TI | VSON-HR-10 (DLA) | 3×2 | 1.3V~5.5V | 升降压, 2A输出@VI≥2.3V, 11μA IQ, 1.8V~5.2V可调输出, PFM/PWM可选, 真正负载断开 | 电池电压波动大的宽范围供电、单节锂电升降压 |
| TPS61200DRCR | TI | VSON-10 | 3×3 | 0.3V~5.5V | 升压, 1.5A, 0.5V~5.5V输入, 1.8V~5.5V输出 | 单节/双节镍氢、单节锂电升压、太阳能充电 |
| TPS61230ARNST | TI | VQFN-HR-7 (RNS) | 2×2×0.9 | 2.5V~4.5V | 升压, 6A谷值限流, 21mΩ(LS)/18mΩ(HS), 1.15MHz, 效率96%, 输出短路保护, 真正负载断开 | 单节锂电升压到5V、大电流便携设备 |
| TPS61022RWUR | TI | VQFN-HR-7 (RWU) | 2×2 | 0.5V~5.5V | 升压, 8A谷值限流, 12mΩ(LS)/18mΩ(HS), 1MHz, VIN>1.5V, 效率94.7%@3.6V→5V/3A, 超宽输入电压 | 超级电容备用电源、多节碱性电池升压、IoT |
| TPS61088RHLR | TI | VQFN-20 (RHL) | 3.5×3.5 | 2.7V~12V | 10A全集成同步升压, 11.9A开关限流, 4.5V~12.6V输出, 200kHz~2MHz, IQ 110μA, 效率90%+ | 单节锂电升压到5V/9V/12V、大功率便携设备 |
| TLV61046ADBVR | TI | SOT-23-6 (DBV) | 2.9×1.6 | 1.8V~5.5V | 升压, 输出最高28V, 980mA开关电流, 集成功率二极管和隔离开关, 效率85%@3.6V→12V, 7ms软启动 | PMOLED面板供电、LCD偏置、传感器模块 |
| TPS43060RTER | TI | WQFN-16 (RTE) | 3×3 | 4.5V~38V | 同步升压控制器(需外部MOSFET), 输出最高58V, 50kHz~1MHz可调, 7.5V栅极驱动, IQ 600μA | 汽车电源、Thunderbolt端口、5V/12V/24V升压 |
| SY8088AAC | Silergy(矽力杰) | SOT-23-5 | 2.9×1.6×1.1 | 2.5V~5.5V | 1A输出, 1.5MHz, 同步降压, 静态电流40μA, 内部软启动, 100%压差操作 | 便携导航、机顶盒、USB加密狗、智能手机 |
| SY8089AAAC | Silergy | SOT-23-5 | 2.9×1.6 | 2.5V~5.5V | 1.5MHz同步降压, 内置开关, 高轻载效率 | 便携设备、空间受限应用 |
| SYR838PKC | Silergy(矽力杰) | CSP-20 | 1.6×2 | 2.6V~5.5V | 降压, 6A输出, 2.4MHz, 28mΩ/17mΩ内置开关, I²C可编程0.7125V~1.5V, 65μA IQ, 短路打嗝保护 | 智能手机、网络平板、大电流降压 |
| RT8010GQW | Richtek(立锜) | WDFN-6 | 2×2 | 2.5V~5.5V | 1A输出, 1.5MHz PWM, 效率95%, 无需外部肖特基二极管 | 便携设备、空间受限的降压应用 |
| NB678GD | NanJing(南京微芯) | SOP-8 | 5.3×6.2 | 4.5V~24V | 同步降压DC-DC, 可调输出, 300kHz~1MHz, 效率85~92%, 过流/过热保护, 软启动 | 工业电源、3.3V/5V稳压、电池充电电路 |

### 4.3 LDO线性稳压器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 输入电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TLV76701DRVR | TI | WSON-6 | 2×2 | 2.5V~16V | 1A LDO, 0.8V~14.6V可调, 精度1%, IQ 50μA, PSRR 70dB@1kHz | 需要高精度、宽输入范围的LDO应用 |
| TLV76733DRVR | TI | WSON-6 | 2×2 | 2.5V~16V | 3.3V固定输出, 1A LDO, 精度1%, PSRR 70dB | 通用3.3V/5V高精度稳压 |
| LP5912 | TI | DSBGA/DSON | 0.8×0.8/1.2×1.2 | 1.6V~5.5V | 500mA LDO, 超低噪声, 高PSRR, 快速瞬态响应 | RF/PLL/VCO供电、高精度传感器 |
| LP5907MFX | TI | SOT-23-5 | 2.9×1.6 | 1.8V~5.5V | 250mA LDO, 超低噪声6.5μVRMS, PSRR 90dB@1kHz, 压差120mV@250mA | RF/模拟前端、音频编解码器供电 |
| TPS7A2030PDBVR | TI | SOT-23-5 | 2.9×1.6 | 1.6V~5.5V | 3.0V LDO, 200mA, 超低噪声, 低压差 | 噪声敏感的模拟/RF电路 |
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

### 4.4 电源模块/其他电源

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

### 4.5 电源开关/负载开关/电子熔断器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TPS2065CDBVR | TI | SOT-23-5 (DBV) | 2.9×1.6 | 4.5V~5.5V | USB电源开关, 1A限流(±20%精度), 86mΩ RON, 反向阻断, 输出放电, 快速过流响应2μs | USB端口电源保护、USB外设供电 |
| TPS22965DSGR | TI | WSON-8 (DSG) | 2×2 | 0.8V~5.7V | 负载开关, 6A持续, 16mΩ RON, 可调上升时间, 可选输出放电, 50μA IQ | 高密度电源轨切换、电池供电系统 |
| TPS22917DBVR | TI | SOT-23-5 (DBV) | 2.9×1.6 | 1.0V~5.5V | 负载开关, 2A持续, 42mΩ RON, 可调上升时间, 输出放电, 1μA IQ | 空间受限的电源轨切换、便携设备 |
| TPS25200DRVR | TI | WSON-6 (DRV) | 2×2 | 2.5V~5.5V | 电子熔断器/负载开关, 可调限流, 快速过流保护 | USB电源保护、热插拔保护 |
| TPS259261DRVR | TI | WSON-10 (DRV) | 3×3 | 4.5V~13.8V | 电子熔断器, 可调过压/过流保护, 反向电流阻断 | 工业电源保护、热插拔应用 |
| MT9700 | 西安航天民芯 | SOT-23-5 | 2.9×1.6 | 2.4V~5.5V | 高侧负载开关, 2A持续, 80mΩ RON, 过流/短路/过温保护, 反向电流阻断, 15μA工作电流 | USB电源开关、端口电源分配 |
| LTC4412ES6 | ADI | TSOT-23-6 (S6) | 2.9×1.6 | 3.6V~36V | 理想二极管控制器, 低损耗ORing, 控制外部P-MOSFET, 自动切换 | 双电源冗余、电池切换、太阳能冗余 |
| AO4407A | — | SO-8 | 4.9×3.9 | P-MOSFET, -30V, -12A | P沟道MOSFET, -30V DS, -12A, 低RDS(on), 适合负载开关应用 | 电池保护、负载开关、电源切换 |

---

## 5. MOSFET功率管

| 型号 | 厂商 | 类型 | 封装 | 封装尺寸 (mm) | VDS | RDS(on) | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| CSD17313Q2 | TI | N-MOSFET | SON-6 | 2×2 | 30V | 32mΩ@4.5V | 逻辑电平驱动, Qg=2.1nC, Qgd=0.4nC, 持续5A(封装限制) | DC-DC转换器、电池/负载管理、5V栅极驱动 |
| CSD25402Q3A | TI | P-MOSFET | VSONP-8 | 3.3×3.3 | -20V | 8.9mΩ@4.5V | 逻辑电平驱动, Qg=7.5nC, 持续-35A(封装限制) | DC-DC转换器、电池管理、负载开关 |
| FD6288Q | — | 三相MOSFET驱动 | — | — | — | — | 三相无刷电机栅极驱动 | 三相BLDC/PMSM电机驱动 |
| CSD18534Q3AT | TI | N-MOSFET | SON (SO-8兼容) | 5×6 | 30V | 3.5mΩ@10V / 5.5mΩ@4.5V | 逻辑电平驱动, Qg=30nC, Qgd=8nC, 持续75A(封装限制) | DC-DC转换器、电池保护、大电流负载开关 |

---

## 6. 逻辑器件

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| 74HC595D | Nexperia | SO-16 (SOT109-1) | 9.9×3.9×1.35 | 2V~6V(标称5V) | 8位串入并出移位寄存器, 三态输出, 传播延迟265ns, 最高24MHz | LED阵列驱动、IO扩展、数码管驱动 |
| 74HC595BQ | Nexperia | DHVQFN-16 | 3.6×2.6×0.95 | 2V~6V | 8位串入并出移位寄存器, 三态输出, 功耗0.5W, 静态160μA, 更小封装 | 空间受限的LED驱动、IO扩展 |
| SN74LVC2G66DCTR | TI | SSOP-8 (DCT) | 2.3×2.4 | 1.65V~5.5V | 双路SPST模拟开关, 双向, RON≈6Ω@4.5V, 高速0.5ns, 轨到轨, 支持5.5V信号 | 模拟/数字信号切换、音频路由、电平转换 |
| TS3A44159PWR | TI | TSSOP-16 (PW) | 5×4.4 | 1.65V~4.3V | 4通道SPDT模拟开关(2×DPDT), 先断后合, RON<0.5Ω, 低电荷注入, THD低 | 音频路由、信号切换、模拟多路复用 |

---

## 7. 存储器件

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| W25Q80DVUXIE | Winbond | USON-8 | 2×3 | 2.7V~3.6V | 8M-bit (1MB) SPI NOR Flash, 支持Dual/Quad SPI, 80MHz, DTR | 固件存储、Bootloader、小容量配置数据 |
| W25Q16JVUXIQ | Winbond | USON-8 | 2×3 | 2.7V~3.6V | 16M-bit (2MB) SPI Flash, 支持Dual/Quad SPI, 133MHz, DTR | 固件存储、数据日志、FPGA配置存储 |
| W25Q32JWBYIQ | Winbond | SOIC-8 | 5.3×8 | 2.7V~3.6V | 32M-bit (4MB) SPI NOR Flash, 支持Dual/Quad SPI, 104MHz, DTR | 固件存储、配置参数、应用代码存储 |
| W25Q64JVSSIQ | Winbond | SOIC-8 | 4.9×3.9 | 2.7V~3.6V | 64M-bit (8MB) SPI Flash, 支持Dual/Quad SPI, 133MHz, DTR | 固件存储、大容量数据日志、显示屏资源存储 |
| W25Q256JVEIQ | Winbond | SOIC-8 | 5.3×8 | 2.7V~3.6V | 256M-bit (32MB) SPI NOR Flash, 支持Dual/Quad SPI, 80MHz, DTR | 大容量固件存储、文件系统、FPGA配置 |
| W9825G6KH-6I | Winbond | TSOP-54 | 14×20 | 3.3V±0.3V | 256Mb (16M×16) SDRAM, 166MHz(PC133), CL3, tAC=8ns, 100mA工作/10mA待机 | 嵌入式系统DRAM缓存、LCD显存、网络设备 |
| M24C08 | STMicro | — | — | 1.8V~5.5V | 8Kb (1024×8) I²C EEPROM, 1MHz, 工作温度-40~105°C, 页面16字节 | 配置参数存储、设备校准数据、小容量非易失存储 |
| M24C640FMC6TG | STMicro | UFDFPN-8 | 2×3 | 1.8V~5.5V | 640Kbit (80KB) I²C EEPROM, 1MHz, 32字节页面, 100万次擦写, 200年数据保存 | 大容量配置存储、日志记录、设备校准 |

---

## 8. LED驱动

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| HTR3229SQER | Heroic(禾润) | QFN-32 | 4×4 | 2.5V~5.5V | 16×8 LED矩阵驱动, I²C 1MHz, 每路独立256级PWM调光, 开路/短路检测 | 白色家电LED面板、IoT设备、智能音箱 |
| HD107S | — | LED集成封装 (5050) | 5×5×1.4 | 4.5V~5.3V | 全彩LED, 双线SPI, 26kHz PWM, 最高40MHz时钟, 内置恒流 | 全彩LED灯带、像素屏、装饰照明 |
| SK9822 | — | LED集成封装 (5050) | 5×5×1.6 | 4.5V~5.5V | 全彩LED, 双线SPI, 256级灰度, 32级亮度, 最高30MHz | 全彩LED灯带、智能照明、显示屏 |
| MAX7219CWG | Maxim(ADI) | SOP-24 | 8.45×6.0 | 4V~5.5V | 8位LED数码管驱动, SPI接口, 可级联, 16级PWM调光, 150mA段驱动, LED点阵8×8 | 数码管显示、LED点阵屏、工业仪表、数字时钟 |

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
| HK32F030MF4P6 | 航顺(HK) | TSSOP-20 | 6.5×4.4 | 32MHz | 16KB/2KB+448B EEPROM | 1.8V~3.6V | Cortex-M0, 1×USART(6Mbps), 1×SPI/I2S, 1×I²C(1MHz), 12bit ADC(5ch,有效8bit), 1×Adv Timer(4ch PWM+3ch互补), 1×Gen Timer, 1×Basic Timer, 16 GPIO, IOMUX | 低成本控制、8位MCU替代、IoT传感器、玩具、家电 |

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

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 关键参数 | 适用场景 |
|---|---|---|---|---|---|
| RP2040 | 双核Cortex-M0+ | QFN-56 | 7×7 | 133MHz, 264KB SRAM, 2×UART, 2×SPI, 2×I²C, 16×PWM, USB1.1 Host/Device, 8×PIO状态机, -40~85°C | DIY项目、教育、IoT、HID设备、PIO自定义外设 |
| RP2350A | 双核Cortex-M33 / 双核Hazard3 RISC-V(可选切换) | QFN-60 | 7×7 | 150MHz, 520KB SRAM, 30 GPIO, TrustZone安全, 12×PIO, 4×ADC, SHA-256加速, USB1.1 | 紧凑型安全嵌入式、工业控制、可穿戴设备 |
| RP2350B | 双核Cortex-M33 / 双核Hazard3 RISC-V(可选切换) | QFN-80 | 10×10 | 150MHz, 520KB SRAM, 48 GPIO, TrustZone安全, 12×PIO, 4/8×ADC, SHA-256加速, USB1.1 | 高性能嵌入式、安全IoT、边缘计算、Pico 2 |

| 型号 | 内核 | 封装 | 封装尺寸 (mm) | 主频 | Flash/SRAM | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|---|---|
| STM32N647IO | Cortex-M55 FPU + Neural-ART NPU | UFBGA-176 | 10×10 | 800MHz | —/4.2MB | 1.71V~3.6V | Neural-ART NPU 600GOPS@1GHz, NeoChrom GPU, H.264编码, ISP, 2×USB HS OTG, 1G Ethernet TSN, 6×SPI, 4×I²C, 2×I³C, 10×UART, 3×FDCAN, LCD-TFT, CSI-2, TrustZone, SESIP3, -40~125°C | AI边缘计算、计算机视觉、HMI、智能家居、工业控制 |
| STM32H7R7L8 | Cortex-M7 FPU + NeoChrom GPU | LQFP-144 | 20×20 | 600MHz | 64KB/620KB | 1.71V~3.6V | NeoChrom GPU, JPEG编解码, LCD-TFT, 2×USB HS OTG+PHY, 以太网MAC, 6×SPI, 3×I²C, 1×I³C, 7×UART, 2×FDCAN, 2×12bit ADC(5MSps), CORDIC, Chrom-ART, FMC, OSPI, -40~125°C | HMI显示、图形加速、工业控制、边缘网关 |
| STM32H723VGT6 | Cortex-M7 | LQFP-100 | 14×14 | 550MHz | 1MB/564KB | 1.62V~3.6V | 最高性能, 双精度FPU, Chrom-ART | 高性能HMI、电机控制、边缘AI |
| STM32H723ZGT6 | Cortex-M7 FPU | LQFP-144 | 20×20 | 550MHz | 1MB/564KB | 1.62V~3.6V | 同H723VGT6, LQFP-144更多IO, 2×USB OTG HS+FS, 以太网MAC, 4×USART, 4×SPI, 4×I²C, 3×ADC, FMC, QSPI, Chrom-ART, JPEG编解码, -40~125°C | 电机控制、工业HMI、网络网关、数据采集 |
| STM32H743XIH6 | Cortex-M7 | UFBGA-176 | 10×10 | 480MHz | 2MB/1MB | 1.62V~3.6V | 超大BGA封装, 最多168 IO | 超复杂SoC级应用 |
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
| CS4344 | Cirrus Logic | TSSOP-10 | 3.1×3.1 | 3.3V/5V | 24bit立体声DAC, 105dB动态范围, -90dB THD+N, 2k~192kHz, Popguard | DVD/BD播放器、数字电视、机顶盒、汽车音响 |

### 11.3 音频处理器/语音芯片

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| WT2605CX | 唯创 | QFN-32 | 4×4 | 2.8V~5V | 双模蓝牙音频芯片, 24MHz晶振, DAC SNR 95dB, ADC SNR 79dB, UART AT指令控制, 支持蓝牙音频+通话+本地播放 | 蓝牙音箱、车载音响、智能家居 |
| WT8509 | — | — | — | — | 音频处理芯片 | 待补充详细参数 |

### 11.4 音频放大器(新增)

### 11.5 其他音频器件

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| MAX9814 | Maxim(ADI) | TQFN-32 | 5×5 | 2.7V~5.5V | 麦克风前置放大器, 集成AGC, I²S数字输出, 8~48kHz采样率, 16bit ADC | 语音识别、智能音箱、录音笔 |

---

## 12. 电池管理/充电芯片

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| BQ25895RTWR | TI | QFN-24 | 4×4 | 3.9V~14V | I²C控制, 5A快充, 93%效率@2A, 支持USB/高压适配器/OTG升压 | 智能手机、平板、移动电源、快充设备 |
| BQ25606RGER | TI | VQFN-24 | 4×4 | 3.9V~13.5V | 独立3A开关充电, 92%效率@2A, 支持OTG升压, USB SDP/CDP/DCP检测 | 单节锂电充电、移动电源、便携设备 |
| BQ24610RGER | TI | VQFN-24 | 4×4 | 4.5V~28V | 1-6节锂电/镍氢充电控制器, 同步降压充电, I²C控制 | 笔记本电脑、电动工具、多节电池充电 |
| BQ24074RGRR | TI | QFN-16 (RGR) | 3×3 | 4.35V~10.5V | 1.5A线性充电, 电源路径管理, DPPM, USB OTG升压, 28V输入 | 单节锂电、空间受限的充电应用 |
| BQ24075RGRR | TI | QFN-16 | 3×3 | 4.35V~10.5V | 1.5A线性充电, 电源路径管理 | 单节锂电、标准充电应用 |
| BQ24076RGRR | TI | QFN-16 | 3×3 | 4.35V~10.5V | 1.5A线性充电, 电源路径管理 | 单节锂电、标准充电应用 |
| BQ24072RGRR | TI | QFN-16 | 3×3 | 4.35V~10.5V | 1.5A线性充电, 支持USB OTG | 单节锂电、需OTG功能的应用 |
| BQ24073RGRR | TI | QFN-16 | 3×3 | 4.35V~10.5V | 1.5A线性充电, 电源路径管理 | 单节锂电、标准充电应用 |
| IP5306 | INJOINIC(英集芯) | ESOP-8 | 4.9×3.9 | 4.65V~5.5V | 2.1A充电/2.4A放电, 移动电源SoC, 集成升压+充电管理+电量指示 | 移动电源、便携充电设备 |
| IP5306_CK | INJOINIC(英集芯) | ESOP-8 | 4.9×3.9 | 4.65V~5.5V | CK后缀变体版本, 功能参数同IP5306, 可能固件/充电逻辑差异 | 移动电源、便携充电设备、IP5306低成本替代 |
| MAX17048G | Maxim(ADI) | TDFN-8 | 2×2 | — | 单节Li+电池电量计(ModelGauge), 微功耗 | 锂电池电量监测、便携设备电量显示 |
| BQ27441DRZR-G1 | TI | SON-12 (DRZ) | 2.5×4.0 | 2.7V~5.5V | 单节Li+电量计, Impedance Track™, I²C, ±1%精度, 10mΩ感测电阻, 电池认证SHA-1/HMAC | 智能手机、TWS耳机、无人机、便携设备 |
| BQ27542DRZR-G1 | TI | SON-12 (DRZ) | 2.5×4.0 | 2.7V~5.5V | 单节Li+高精度电量计, Impedance Track™, ±1%精度, I²C+HDQ, SHA-1/HMAC认证, 100~14500mAh | 医疗设备、高端TWS、工业电池包 |

| IP2366 | INJOINIC(英集芯) | QFN-32 | 4×4 | — | 移动电源SoC, 支持PD快充, 双向升降压, 集成充电管理+放电+电量显示 | 移动电源、PD快充设备 |
| IP2368 | INJOINIC(英集芯) | QFN-40 | 5×5 | — | 移动电源SoC, 支持PD3.0/QC4+, 双向升降压, 多协议快充, 集成电量计 | 大功率移动电源、多协议快充 |
| AXP2101 | X-Powers(芯智汇) | QFN-32 | 4×4 | 2.9V~5.5V | 全集成电源管理PMIC, 3路DC-DC+5路LDO, 支持锂电池充电, I²C控制, 12bit ADC | 平板、便携设备、多电源系统 |
| ZTS6216 | — | — | — | — | 电源管理IC | 待补充详细参数 |
| BL1532 | — | QFN | — | — | 电源管理IC | 待补充详细参数 |
| EC190708 | — | — | — | — | 电源保护/监控IC | 待补充详细参数 |
| GEK100 | 广昇科技 | SOT-23-6 | 2.9×1.6 | 1.8V~3.6V | 按键电源管理IC, 支持短按/长按/双击, 关机0功耗, 硬件复位, 200μA工作/2nA静态 | 电池供电设备的按键开关机控制 |

---

## 13. 其他器件

### 13.1 二极管

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 关键参数 | 适用场景 |
|---|---|---|---|---|---|
| BAT54C | DIOTEC/Nexperia等 | SOT-23 | 2.9×1.6 | 肖特基二极管, 30V VRRM, 200mA, VF=1V@100mA, 2μA漏电流, 快速开关 | 低压高频整流、续流、极性保护、钳位保护 |

### 13.2 传感器接口/键盘控制

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| TCA8418RTWR | TI | WQFN-24 | 4×4 | 1.65V~3.6V | I²C键盘扫描IC, 18 GPIO支持80键, 10字节FIFO, 消抖50μs, 待机3μA | 键盘矩阵扫描、QWERTY键盘、GPIO扩展 |

### 13.3 电源监控/电流传感器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| INA226AIDGSR | TI | VSSOP-10 (DGS) | 3×3 | 2.7V~5.5V | 电流/电压/功率监控, I²C, 16bit, 0~36V共模, 0.1%增益误差, 10μV失调, 16个可编程地址 | 电源监控、电池管理、电流检测 |

### 13.4 USB PD控制器

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| HUSB238 | — | DFN-10L | 3×3 | 3V~25V | USB PD3.0 Sink控制器, 支持Type-C, 最高100W, 支持Apple Divider/BC1.2, I²C接口 | PD受电设备、无线充电器、IoT设备、无人机 |

### 13.5 信号发生器/DDS

| 型号 | 厂商 | 封装 | 封装尺寸 (mm) | 供电电压 | 关键参数 | 适用场景 |
|---|---|---|---|---|---|---|
| AD9833 | ADI(亚德诺) | MSOP-10 | 3×3 | 2.3V~5.5V | 可编程波形发生器(DDS), 28bit频率寄存器, 正弦/三角/方波输出, SPI接口, 25MHz主频 | 函数发生器、RF调制、音频合成、测试仪表 |

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
