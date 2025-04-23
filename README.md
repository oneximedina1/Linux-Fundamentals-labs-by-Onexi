# Linux-Fundamentals-Labs
Hands-on Linux training with daily labs and shell scripting

# Linux Fundamentals Labs

This repository contains daily hands-on Linux training exercises designed to build proficiency in:

- Bash and shell scripting
- User and group management
- Networking and firewall configuration
- System monitoring and process control

Each folder (day1, day2, etc.) contains scripts, notes, and lab files created during my journey to mastering Linux.
# Day 8: Scheduling Tasks with Cron

## 🧠 What I Learned
- How to schedule tasks using `crontab -e`
- How to use time-based syntax: `minute hour day month weekday`
- Special macros like `@reboot` for boot-time tasks
- How to log cron job output for troubleshooting
- Used `tail -f` to verify job execution in real-time

## 🔧 Practical Examples
```bash
# Run system update daily at 1 AM
0 1 * * * sudo apt update && sudo apt upgrade -y >> /home/onexi/update.log 2>&1

# Log reboot events
@reboot echo "System booted at $(date)" >> /home/onexi/boot.log

# Check disk usage every Sunday at midnight
0 0 * * 0 df -h >> /home/onexi/disk_check.log
