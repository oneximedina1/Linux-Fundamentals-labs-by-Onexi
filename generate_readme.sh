#!/bin/bash

echo "📘 Generating README.md for Day $1..."

case $1 in
  1)
    folder="day1_basics"
    content="# Day 1: Linux Command Line Basics

## Goals
- Learn navigation: \`cd\`, \`ls\`, \`pwd\`
- Create/edit files: \`touch\`, \`echo\`, \`cat\`
- Use \`mkdir\`, \`mv\`, \`cp\`, \`rm\`

## Commands Used
\`\`\`bash
cd, ls, pwd, mkdir, touch, mv, cp, rm, echo, cat
\`\`\`
"
    ;;
  2)
    folder="day2_search_git"
    content="# Day 2: Search Tools & Git Basics

## Goals
- Use \`grep\`, \`find\`, \`wc\`
- Practice Git: \`clone\`, \`add\`, \`commit\`, \`push\`

## Commands Used
\`\`\`bash
grep, find, wc, git init, git add, git commit, git push
\`\`\`
"
    ;;
  3)
    folder="day3_permissions"
    content="# Day 3: Permissions & Ownership

## Goals
- Practice \`chmod\`, \`chown\`, and \`sudo\`
- Understand Linux file permissions and the sudoers file

## Commands Used
\`\`\`bash
chmod, chown, sudo, groups, ls -l
\`\`\`
"
    ;;
  4)
    folder="day4_networking"
    content="# Day 4: Networking Tools & Firewalls

## Goals
- Understand IP, routing, and name resolution
- Use tools like \`ping\`, \`traceroute\`, \`netstat\`, \`ss\`
- Work with SSH and firewalls (\`iptables\`, \`firewalld\`)

## Commands Used
\`\`\`bash
ip, ping, traceroute, netstat, ss, nslookup, dig, ssh, iptables, firewall-cmd
\`\`\`
"
    ;;
  *)
    echo "❌ Invalid day number."
    exit 1
    ;;
esac

echo "$content" > "$folder/README.md"
echo "✅ README.md created in $folder/"
chmod +x generate_readme.sh
./generate_readme.sh 4


