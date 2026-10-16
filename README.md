# DS1202 Project: System Information Script

## About
This project is my DS1202 AS02 assignment. It contains `sysinfo.sh`, a shell script that prints a system-information report on a Linux server, and documents how I set up secure SSH access and managed the work with Git and GitHub.

### What sysinfo.sh reports
- Hostname
- OS and kernel version
- Uptime and CPU load average
- Memory usage
- Disk usage
- The report is also saved to a timestamped file in `logs/`

## Setup
1. **Generate an SSH key (on my computer):**
   `ssh-keygen -t ed25519 -C "your.email@student.pb.edu.bn"`
2. **Copy the public key to the lab server:**
   `ssh-copy-id 26FTT1124@iib.politeknikbrunei.com`
3. **Log in without a password:**
   `ssh 26FTT1124@iib.politeknikbrunei.com`
4. **Create the project directories (on the server):**
   `mkdir -p ~/ds1202-project/{scripts,docs,logs}`
5. **Set permissions:**
   `chmod 755 ~/ds1202-project` and `chmod 755 ~/ds1202-project/{scripts,docs,logs}`
   (755 means the owner can read, write and execute, while others can only read and execute.)
6. **Make the script executable:**
   `chmod +x ~/ds1202-project/scripts/sysinfo.sh`

## How to run
```bash
cd ~/ds1202-project
./scripts/sysinfo.sh
```
The report prints to the screen and is saved as `logs/sysinfo_YYYYMMDD_HHMMSS.log`. Log files are listed in `.gitignore`, so they are not committed.

## Git workflow
1. `git init -b main` and a first commit with the directory structure and the basic script.
2. `git switch -c feature-logging` to create a feature branch.
3. Enhanced `sysinfo.sh` on that branch (uptime, CPU load, logging to `logs/`) and committed it.
4. `git switch main` and `git merge --no-ff feature-logging` to merge the feature back, creating a merge commit.
5. Added `.gitignore` and this README.
6. Created a public GitHub repository, added it as the remote, and pushed with
   `git push -u origin main` and `git push origin feature-logging`.

## Evidence screenshots
The evidence PDF contains these screenshots, in order:
1. `ssh-keygen` output (key generated)
2. Passwordless SSH login to the server
3. `ls -la` of `~/ds1202-project` showing structure and permissions
4. Output of the enhanced `sysinfo.sh` after the merge
5. `git log --graph --oneline --all` showing the commit history and branches
