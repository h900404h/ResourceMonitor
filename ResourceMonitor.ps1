# 報告輸出檔名，加上時間避免覆蓋
$reportPath = ".\report\Resource_Report_$(Get-Date -Format 'yyyyMMdd_HHmmss').txt"

# 簡單的段落標題
function Write-Section($title) {
    Add-Content $reportPath "`n==== $title ====`n"
}

# 報告抬頭
Add-Content $reportPath "System Resource Monitor Report"
Add-Content $reportPath "Generated: $(Get-Date)`n"

# 模組（載入功能）
. .\modules\CpuChecker.ps1
. .\modules\MemoryChecker.ps1
. .\modules\DiskChecker.ps1
. .\modules\ProcessChecker.ps1

# 執行各檢查項目
Write-Section "CPU Usage"
Get-CPUUsage | Add-Content $reportPath

Write-Section "Memory Status"
Get-MemoryStatus | Add-Content $reportPath

Write-Section "Disk Status"
Get-DiskStatus | Add-Content $reportPath

Write-Section "Top Processes"
Get-TopProcesses | Add-Content $reportPath

# 結尾
Add-Content $reportPath "`n==== END ===="
Write-Host "Report generated at: $reportPath"
