# 电子元器件数据库交叉比对脚本
# 用法: pwsh cross-check.ps1
# 功能: 比对 list 和 database，找出缺失/重复项

$workspace = "c:\Users\admin\Downloads\elec-components-manage"
$listFile = "$workspace\electronic-components-list.md"
$dbFile = "$workspace\electronic_components_database.md"

Write-Host "=== 电子元器件数据库交叉比对 ===" -ForegroundColor Cyan

# 1. 读取并解析 list
$content = Get-Content $listFile -Raw
$parts = $content -split "`n", 2
$items = $parts[-1] -split "," | ForEach-Object { $_.Trim() } | Where-Object { $_ -match "[a-zA-Z0-9]"}
Write-Host "清单型号总数(含重复): $($items.Count)" -ForegroundColor Yellow

# 2. 找重复项
$groups = $items | Group-Object | Where-Object { $_.Count -gt 1 }
if ($groups) {
    Write-Host "`n⚠️  发现重复型号:" -ForegroundColor Red
    $groups | ForEach-Object { Write-Host "  $($_.Name) × $($_.Count) 次" }
} else {
    Write-Host "清单无重复 ✅" -ForegroundColor Green
}

# 3. 去重
$unique = $items | Sort-Object -Unique
Write-Host "清单独立型号数: $($unique.Count)" -ForegroundColor Yellow

# 4. 比对 database
$db = Get-Content $dbFile -Raw
$missing = @()
foreach ($item in $unique) {
    # 跳过非型号文本
    if ($item -notmatch "^[a-zA-Z0-9]") { continue }
    
    $found = $db -match [regex]::Escape($item)
    
    # 尝试部分匹配（处理后缀差异）
    if (-not $found) {
        $base = $item -replace '(_ck|tqfn|r)$',''
        $found = $db -match [regex]::Escape($base)
    }
    
    if (-not $found) {
        $missing += $item
    }
}

if ($missing) {
    Write-Host "`n❌ 数据库缺失型号 ($($missing.Count) 个):" -ForegroundColor Red
    $missing | ForEach-Object { Write-Host "  $_" }
} else {
    Write-Host "所有型号均已收录 ✅" -ForegroundColor Green
}

# 5. 找 database 中的重复条目
Write-Host "`n=== Database 检查 ===" -ForegroundColor Cyan
$dbLines = Get-Content $dbFile
$modelLines = $dbLines | Where-Object { $_ -match "^\| [A-Za-z0-9]" }
$dbGroups = $modelLines | ForEach-Object { ($_ -split "\|")[1].Trim() } | Group-Object | Where-Object { $_.Count -gt 1 }
if ($dbGroups) {
    Write-Host "⚠️  database中发现重复条目:" -ForegroundColor Red
    $dbGroups | ForEach-Object { Write-Host "  $($_.Name) × $($_.Count) 次" }
} else {
    Write-Host "database无重复条目 ✅" -ForegroundColor Green
}

Write-Host "`n=== 检查完成 ===" -ForegroundColor Cyan
