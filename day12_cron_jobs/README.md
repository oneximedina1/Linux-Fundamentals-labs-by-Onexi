# Day 12: Cron Jobs & Automation 🚀

## 🧭 Objectives
- Understand how cron works and its role in Linux automation
- Create and manage cron jobs using `crontab`
- Schedule scripts and tasks to run at specific intervals
- Learn how to monitor and debug cron jobs

## 📚 Topics Covered
- `crontab -e`, `crontab -l`, `crontab -r`
- Cron time format (minute, hour, day, month, weekday)
- Running scripts through cron
- Logging cron output to files
- Using `/etc/crontab` and `/etc/cron.*` directories

## ⚙️ Tasks Performed
- Created a backup script and scheduled it using cron
- Logged output of automated tasks
- Simulated a job that checks disk usage hourly
- Scheduled daily report email (simulated using `echo`)

## 📦 Scripts Included
- `backup_home.sh`: Backs up the `/home` directory
- `disk_usage_check.sh`: Logs current disk usage to a file
- `daily_log_cleanup.sh`: Cleans up old logs daily

## 💡 Key Commands Used
```bash
crontab -e
crontab -l
chmod +x script.sh
*/15 * * * * /path/to/script.sh >> /var/log/script.log 2>&1

# Day 12: Cron Jobs & Task Automation

## 🔍 Objective:
Learn to schedule repetitive tasks using `cron` and manage system automation securely and efficiently.

## 🧰 Topics Covered:
- Cron syntax and time field breakdown
- Creating and editing crontab entries
- Redirecting output and logging cron jobs
- Backing up and restoring crontabs
- Using `at` and `anacron` for advanced scheduling

## 🧪 Tasks Completed:
- Logged memory usage every 5 minutes:
  ```bash
  */5 * * * * free -h >> /var/log/memory_check.log
30 2 * * * /home/onexi/scripts/backup_home.sh > /var/log/backup_home.log
crontab -l > ~/my_crontab_backup
crontab -r
* * * * * /path/to/script.sh 2>> /var/log/fails.log
* * * * * /path/to/script.sh 2>> /var/log/fails.log
