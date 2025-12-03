# 記憶體狀態
function Get-MemoryStatus {

    $output = @()

    # WMI 抓記憶體資訊（單位 KB）
    $mem = Get-CimInstance Win32_OperatingSystem

    $total = [math]::Round($mem.TotalVisibleMemorySize / 1MB, 2)
    $free  = [math]::Round($mem.FreePhysicalMemory / 1MB, 2)

    # 簡單算一下使用率
    $usage = [math]::Round((($total - $free) / $total) * 100, 2)

    $output += "Total Memory : $total GB"
    $output += "Free Memory  : $free GB"
    $output += "Usage        : $usage %"

    return $output
}
