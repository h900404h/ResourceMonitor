# CPU 使用率
function Get-CPUUsage {

    $output = @()

    # 性能計數器：取全部核心平均 CPU 使用率
    $cpu = (Get-Counter '\Processor(_Total)\% Processor Time').CounterSamples.CookedValue
    $cpu = [math]::Round($cpu, 2) #把 CPU 數字四捨五入到小數點第 2 位
    $output += "CPU Usage: $cpu %"
    return $output
}
