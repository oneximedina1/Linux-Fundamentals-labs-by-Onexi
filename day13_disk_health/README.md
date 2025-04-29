# Day 13 - Disk Health and Usage Monitoring

## Overview
Today's mission was to create a script that:
- Checks the disk usage on root (`/`) filesystem.
- Uses `smartctl` to check the SMART health status of attached disks.
- Outputs a summary of disk usage and health to the console.

## Files
- `disk_report.sh`: Bash script that automates disk usage and health reporting.

## Skills Applied
- Bash scripting
- Disk usage monitoring (`df`)
- Disk health monitoring (`smartctl`)
- Permissions management (`chmod`)
- Command-line output formatting (`awk`, `grep`)
- Systemd service management (for SSH access)

## Notes
- Disks that do not return a health status are flagged as "NEEDS REPLACEMENT."
- Scripts are placed under `~/lab/day13_disk_health/`.

## How to Run
```bash
chmod +x ~/lab/day13_disk_health/disk_report.sh
~/lab/day13_disk_health/disk_report.sh


---

### 3. Git Commit & Push Instructions

```bash
cd ~/lab
git add day13_disk_health/ README.md
git commit -m "Day 13 - Added Disk Health and Usage Monitoring Script"
git push

