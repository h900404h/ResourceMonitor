# 磁碟空間
function Get-DiskStatus {

    $output = @()

    # 所有磁碟（FileSystem provider）
    $disks = Get-PSDrive -PSProvider FileSystem

    foreach ($d in $disks) {

        $freeGB  = [math]::Round($d.Free / 1GB, 2)
        $usedGB  = [math]::Round(($d.Used) / 1GB, 2)
        $totalGB = [math]::Round($d.Maximum / 1GB, 2)

        # 避免除以 0（某些裝置可能回傳 Size = 0）
        if ($totalGB -eq 0) {
            $output += "Drive $($d.DeviceID): Skipped (Total size = 0)"
            continue
        }

        $percent = [math]::Round(($usedGB / $totalGB) * 100, 2)

        $output += "$($d.Name):  $usedGB GB / $totalGB GB ($percent % used)"
    }

    return $output
}
