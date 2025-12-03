# PowerShell Resource Monitor（系統資源監控工具）

一個輕量化的 PowerShell 腳本，用於即時監控系統資源，並輸出清晰易讀的結果。

---

## 功能特色

- CPU 使用率監控  
- 記憶體使用狀態檢查  
- 取得佔用 CPU 時間最高的程序列表  
- 無需額外依賴或模組  
- 適合作為診斷工具或作品集示範  

---

## 使用方式

1. 在 PowerShell 中執行腳本：

```
powershell -ExecutionPolicy Bypass -File .\ResourceMonitor.ps1
```

2. 範例輸出：

```
CPU Usage: 14.35 %
Memory Used: 7.12 GB / 16 GB
Top Processes:
chrome - CPU Time: 120
powershell - CPU Time: 45
explorer - CPU Time: 12
```

---

## ⚙ 原理說明

- 使用 `Get-Counter` 取得 CPU 負載  
- 使用 `Win32_OperatingSystem` 讀取記憶體資訊  
- 使用 `Get-Process` 取得程序與 CPU 使用時間  
- 將結果格式化，使輸出簡潔易懂  

---

## 檔案結構

```
ResourceMonitor.ps1   # 主腳本
README.md             # 專案說明
```

---

## License

MIT License — 可自由使用與修改。
