# PowerShell Resource Monitor

A lightweight PowerShell script that monitors system performance in real time and generates clear readable output.

## Features

- CPU usage monitoring  
- Memory usage tracking  
- List top CPU-consuming processes  
- Simple and dependency‑free  
- Great for diagnostics or interview portfolio projects  

## Usage

1. Run the script in PowerShell:
```
powershell -ExecutionPolicy Bypass -File .\ResourceMonitor.ps1
```

2. You will see output like:
```
CPU Usage: 14.35 %
Memory Used: 7.12 GB / 16 GB
Top Processes:
chrome - CPU Time: 120
powershell - CPU Time: 45
explorer - CPU Time: 12
```

## How It Works

- Uses `Get-Counter` to retrieve CPU load  
- Uses `Win32_OperatingSystem` to read memory usage  
- Fetches processes via `Get-Process`  
- Formats values to keep result clean and readable  

---

## File Structure

```
ResourceMonitor.ps1   # Main script
README.md             # Project description
```

---

## License

MIT License — free to modify and use.
