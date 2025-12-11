# 磁碟空間
function Get-DiskStatus {

    $output = @()

    # DriveType 3 = Local Disk
    $drives = Get-CimInstance Win32_LogicalDisk | Where-Object { $_.DriveType -eq 3 }

    foreach ($d in $drives) {

        $totalGB = [math]::Round($d.Size / 1GB, 2)
        $freeGB  = [math]::Round($d.FreeSpace / 1GB, 2)
        $usedGB  = [math]::Round(($d.Size - $d.FreeSpace) / 1GB, 2)

        $percent = [math]::Round(($usedGB / $totalGB) * 100, 2)

        $output += "Drive $($d.DeviceID): $usedGB GB / $totalGB GB ($percent % used)"
    }

    return $output
}
