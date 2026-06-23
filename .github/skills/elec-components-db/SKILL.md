---
name: elec-components-db
description: '管理电子元器件数据库(.md格式)。适用：新增型号检索、清单去重、数据库与清单交叉比对、数据排序整理。不适用：修改代码、调试电路、PCB设计。'
user-invocable: true
---

# 电子元器件数据库管理 Skill

## 使用场景

- 用户给出型号列表，需要检索参数并写入数据库
- 型号清单(list)需要去重、排序、整理
- 检查list中的型号是否都在database中有对应条目
- 对database中的条目进行逻辑排序整理
- 批量补充数据、修复错误、删除重复

## 文件结构

```
elec-components-manage/
├── electronic-components-list.md    # 型号清单（逗号分隔一行）
└── electronic_components_database.md # 参数数据库（分类Markdown表格）
```

## 工作流程

### 0. 前置检查 — 去重（每次操作必做）

**在任何新增、修改操作之前，必须先查重。这是最高优先级的强制步骤。**

```
前置检查流程：
1. 在 database 全文(grep)搜索待添加型号
2. 如果已存在，停止操作并报告用户该型号已存在及所在位置
3. 如果存在拼写/后缀差异（如 rgtr vs RGRR），确认是否为同一型号
4. 仅在确认完全不重复后，再执行后续操作
```

> **牢记**：往database中添加任何新元件前，必须三步走：
> 1️⃣ `grep_search` 搜database → 2️⃣ 确认不存在后才 → 3️⃣ 执行写入

### 1. 新增型号 → 检索并写入 database

**触发条件**：用户在list末尾添加了新型号，或在对话中直接给出型号。

```
步骤：
0. ⚠️ 前置查重：grep_search database 确认型号尚未收录
1. 提取所有新增型号（对比list和database找出缺失项）
2. 联网检索参数（优先TI官网、Raspberry Pi官网、Winbond官网等厂商官网）
3. 确定型号归属章节（见下方分类对照表）
4. 使用 multi_replace_string_in_file 批量写入 database
5. 同时在 list 末尾追加型号
6. 验证写入结果（grep_search确认）
7. 二次验证：运行cross-check脚本确保无重复产生
```

**检索顺序建议**：
- TI产品 → `https://www.ti.com/product/<型号>` 或搜索
- Raspberry Pi → `https://www.raspberrypi.com/products/<型号>/`
- Winbond ST → 搜索引擎搜索 `"<型号>" datasheet`
- 国产芯片 → 搜索引擎搜索 `"<型号>" 规格书`
- 若官网打不开，使用 subagent 的 Explore agent 进行知识检索

**检索必填字段**：型号、厂商、封装名称、封装尺寸(mm)、供电电压、关键参数、适用场景

### 2. 型号清单去重排序

**触发条件**：list文件中出现重复型号，或需要排序。

```
步骤：
1. 读取 list 文件内容
2. 按逗号分割提取所有型号
3. 去除首行说明文字中的型号误匹配
4. 统一大小写（如 LIS2dw12tr → LIS2DW12TR）
5. Sort-Object -Unique 去重
6. 重新组合为逗号分隔的一行
7. 写回文件
8. 验证：检查是否还有重复项
```

**常用PowerShell命令**：
```powershell
# 提取去重
$items = $content -split "," | ForEach-Object { $_.Trim() } | Where-Object { $_ -match "[a-zA-Z0-9]" }
$unique = $items | Sort-Object -Unique

# 找重复项
$items | Group-Object | Where-Object { $_.Count -gt 1 }
```

### 3. list ↔ database 交叉比对

**触发条件**：需要确认list中所有型号是否都已在database中收录。

```
步骤：
1. 提取list中所有型号（去重后）
2. 遍历每个型号，在database中grep搜索
3. 注意处理大小写、后缀变体（如 tqfn、tr 等后缀）
4. 注意连写错误（如 zts6216pam8302 可能是两个型号）
5. 输出缺失型号列表
6. 对缺失型号执行"新增型号"流程
```

**注意事项**：
- 有些型号在database中可能以不同形式出现（如 `bl1532tqfn` vs `bl1532`）
- database中的表格行以 `| ` 开头，搜索时需注意精确匹配
- 某些型号在database中存在于多处（重复条目），需要清理

### 4. Database 排序整理

**触发条件**：database中的条目顺序混乱，需要按人类阅读习惯排序。

```
通用排序原则：
1. 按厂商分组（TI产品放一起、ST产品放一起等）
2. 同一厂商内按功能/系列排列
3. 同系列按参数（如容量、功率、电压）从小到大或从大到小
4. 使用 multi_replace_string_in_file 进行批量重排
```

**各章节排序规则**：

| 章节 | 排序方式 |
|---|---|
| §4.2 单路DC-DC | TI降压 → TI升降压 → TI升压(含控制器) → Silergy → Richtek → 其他 |
| §4.3 LDO | TI通用LDO → TI超低噪声LDO → TI高压LDO → Microne → Richtek → TI电压基准 |
| §7 存储器件 | SPI Flash按容量从小到大 → SDRAM → EEPROM |
| §9 MCU同系列 | 按性能从高到低（主频/Flash/SRAM） |
| §11 音频放大器 | 按输出功率从大到小 |
| §12 电池管理 | 开关充电 → 线性充电 → 移动电源SoC → 电量计 |

### 5. 数据验证

每次写入后必须验证：

```powershell
# 验证新增型号存在
grep_search "型号" database.md

# 验证list无重复
$items | Group-Object | Where-Object { $_.Count -gt 1 }

# 验证database无格式错误
Select-String "^|\s*\|\s*$" database.md  # 检查表格行完整性
```

## 型号分类对照表

| 型号前缀/特征 | 归属章节 |
|---|---|
| PCF85063, DS3231 | §1 实时时钟 |
| QMA, LIS2D, MPU, ICM | §2.1 加速度计 |
| QMC, HMC, MM | §2.2 磁力计 |
| SHT, BME, BMP, DHT, AHT | §2.3 温湿度/气压 |
| INMP, SPH | §2.4 麦克风 |
| ACT, ECMF | §2.5 EMI滤波 |
| TMP, DS18, LM75 | §2.6 数字温度传感器 |
| CH334, CH335, CH338, VL822, VL160 | §3.1 USB HUB |
| CH343, CH340, CP210, FT232 | §3.2 USB转串口 |
| TS3USB, TS5A | §3.3 USB信号开关 |
| CH914, CH347, CH910 | §3.4 蓝牙/多协议转接 |
| GL322, GL823 | §3.5 USB读卡器 |
| CH397, AX88179 | §3.6 USB网卡 |
| EA3059, TPS43060 | §4.1 多路PMIC |
| TPS620, TPS621, TLV625, TPS566, TPS543, TPS563, TPS628, SY808, SYR, RT801, NB678 | §4.2 单路DC-DC |
| TPS630, TPS638 | §4.2 升降压 |
| TPS610, TPS612, TLV610 | §4.2 升压 |
| RT9013, TLV767, LP59, LP590, TPS7A, ME621, ME6217 | §4.3 LDO |
| REF30 | §4.3 电压基准 |
| TPS821 | §4.4 电源模块 |
| LM2776, SC870, ME213, ME218, ME311, LV284, SGM405 | §4.4 其他电源 |
| TPS206, TPS229, TPS252, TPS259, MT9700, LTC441 | §4.5 电源开关 |
| CSD173, CSD185, CSD254, FD628 | §5 MOSFET |
| 74HC595, SN74LVC, TS3A | §6 逻辑器件 |
| W25Q, W982, M24C, M24C64 | §7 存储器件 |
| HTR3229, HD107, SK982, MAX7219 | §8 LED驱动 |
| CH32V, CH32X, CH32H, CH32M | §9.1 WCH RISC-V |
| AT32F | §9.3 Artery |
| PY32F, HC32F005, HC32L110 | §9.4 PY32/HC32 M0+ |
| HC32F460 | §9.5 HC32 M4 |
| GD32F | §9.8 GigaDevice |
| ESP32 | §9.9 ESP32 |
| SF32LB | §9.10 思澈科技 |
| RP20, RP235 | §9.11 Raspberry Pi |
| STM32H7, STM32H5, STM32U5, STM32F4, STM32F1, STM32G4, STM32G0 | §9.6 STM32 |
| RV110 | §9.7 Rockchip |
| DRV883, DRV887, SS883 | §10 电机驱动(低压) |
| DRV830, FD628 | §10 电机驱动(三相) |
| TPA, TAS, MAX983, PAM, AW341, LM386 | §11 音频 |
| PCM51, PCM180, ES90, ES83, CS43 | §11.2 DAC/ADC |
| WT260, WT85 | §11.3 语音芯片 |
| MAX981 | §11.5 其他音频 |
| BQ258, BQ256, BQ246, BQ240 | §12 充电管理 |
| IP530, IP236 | §12 移动电源SoC |
| MAX170, BQ274, BQ275 | §12 电量计 |
| AXP | §12 PMIC |
| BAT54 | §13.1 二极管 |
| TCA841 | §13.2 键盘/IO扩展 |
| INA226 | §13.3 电源监控 |
| HUSB238 | §13.4 USB PD |
| AD983 | §13.5 DDS/信号发生器 |

## 常见问题处理

### 型号连写错误
如 `zts6216pam8302`，应拆分为 `zts6216` 和 `pam8302` 两个型号。

### 大小写不统一
如 `LIS2dw12tr` 应统一为 `LIS2DW12TR`。数据库检索时应注意大小写不敏感匹配。

### 后缀变体
- `bq24074rgtr` = `BQ24074RGRR`（后缀 `r` 与 `R` 视为相同）
- `bl1532tqfn` 可能是特定封装版本，数据库中可记为 `BL1532`

### 型号跨章节重复的处理
如 `TPS82130SILR`（既是DC-DC模块，也是电源模块）：
- 不要在两个章节同时列出完整条目
- 选择最贴合的章节放置主条目（MicroSiP封装 → §4.4 电源模块）
- 可在另一章节加引用注释（如`// 同§4.4 TPS82130SILR`）

### 封装尺寸缺失
部分型号(VL822Q7、VL160等)在官网未公开精确尺寸，标注 `—` 并提示用户补充。

### 重复条目清理
database中出现重复条目（如BAT54C出现两次）时，保留第一个完整条目，删除后面的重复部分。
