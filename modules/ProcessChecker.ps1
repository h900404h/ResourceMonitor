# 前 5 名 CPU 消耗的 Process
function Get-TopProcesses {

    $output = @()

    # CPU 時間排序（累積 CPU 秒數）
    $procs = Get-Process | Sort-Object CPU -Descending | Select-Object -First 5

    foreach ($p in $procs) {
        $output += ("{0} - CPU Time: {1}" -f $p.ProcessName, $p.CPU)
    }

    return $output
}
