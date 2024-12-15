# Linux Commands Cheat Sheet

This README contains a comprehensive list of common Linux commands with examples.

---

## Basic Commands

- `.` : Current directory
- `..` : Previous directory
- `echo` : To print something
- `pwd` : Print working directory
- `ls` : List all files in the current directory
- `ls -a` : List all files including hidden files
- `ls -l` : Long details of files
- `ls -la` : List all files (including hidden) long details
- `man cmd` : Details about a command
- `ls -R` : List files recursively (inside folders)

---

## File Operations

- `cat > <file name>` : Create file using `cat`
- `cat one.txt two.txt` : Show content of both files
- `cat one.txt two.txt > total.txt` : Save content of both files into a new file
- `echo "Hello world"` : Print "Hello world"
- `echo "Hello world" > <file.txt>` : Save the content into a file
- `cat file.txt | tr a-z A-Z > upper.txt` : Translate content to uppercase
- `mkdir random` : Make a directory `random`
- `mkdir random/Hello` : Make `Hello` directory inside `random`
- `mkdir -p random/baba/Hello` : Make a directory in the middle
- `touch names.txt` : Create file
- `touch test/names.txt` : Create file in a subdirectory
- `cp file.txt copy_file.txt` : Copy file
- `cp -r folder1 folder2` : Copy folder recursively
- `mv copy_file.txt test` : Move file to a folder
- `mv names.txt newNames.txt` : Rename file
- `mv copy_file.txt ../NewNames.txt` : Rename file while moving
- `rm <file>` : Remove a file
- `rm -R <folder>` : Remove folder
- `rm -rf <folder>` : Forcefully remove folder

---

## System Operations

- `sudo` : Run as super user
- `df` : Disk space usage
- `df -h` : Human-readable disk space usage
- `du` : File space usage
- `du -h` : Human-readable file space usage

---

## File Editing and Viewing

- `vi total.txt` : Access `vim` editor
  - `esc`-`:x` : Save and exit from `vim`
- `head total.txt` : Show the first 10 lines of a file
- `head -n 4 total.txt` : Show the first 4 lines
- `tail total.txt` : Show the last 10 lines
- `tail -n 2 total.txt` : Show the last 2 lines
- `diff total.txt two.txt` : Compare files line by line
- `locate "*.txt"` : Locate all `.txt` files

---

## File Searching and Finding

- `find .` : Find all files and folders in the current directory
- `find ..` : Find all files and folders in the previous directory
- `find random` : Show all files and folders in the mentioned directory
- `find . -type d` : Find all directories
- `find . -type f` : Find all files
- `find . -type f -name "*.sh"` : Find all `.sh` files (case sensitive)
- `find . -type f -iname "*.sh"` : Find all `.sh` files (case insensitive)
- `find . -type f -mmin -20` : Find files modified within the last 20 minutes
- `find . -type f -mmin +15` : Find files modified more than 15 minutes ago
- `find . -type f -mmin +2 -mmin -10` : Find files modified between 2 and 10 minutes ago
- `find . -type f -mtime -10` : Find files modified in the last 10 days
- `find . -type f -maxdepth 1` : Find files in the current directory only
- `find . -size +1k` : Find files larger than 1KB
- `find . -empty` : Find empty files
- `find . -perm 777` : Find files with `777` permission

---

## File Permissions

- `ls -l` : Show long details and file owner
- `whoami` : Show the current user
- `sudo chown root <file.txt>` : Change the owner to root
- `sudo cat <file.txt>` : Access file with super user permissions
- `sudo chmod 777 <file.txt>` : Provide full permissions using `sudo`
- `find . -perm 777` : Find files with `777` permission
- `chmod u=rwx,g=rx,o=r fs_status.sh` : Change file permissions
- `chmod +x *` : Add execute permission for all files
- `chmod u=rw,g=r,o=r *` : Set specific permissions for all files

---

## Search Commands

- `grep` : Global regular expression print
- `grep -V` : Show version of `grep`
- `grep "word" names.txt` : Search for a word in a file
- `grep -w "word" names.txt` : Find complete word
- `grep -i "word" names.txt` : Case-insensitive search
- `grep -iw "word" names.txt` : Word-based case-insensitive search
- `grep -n "word" names.txt` : Show line number with the match
- `grep -ni "word" names.txt` : Show line number (case-insensitive)
- `grep -win "word" names.txt` : Find complete word, show line number, case-insensitive
- `grep -B 3 "word" names.txt` : Show 3 lines before a match
- `grep -rwin "word" .` : Search recursively in all files
- `grep -rwinl "word" .` : Show the files that contain the match
- `grep -wcir "papai" .` : Count the number of times the word matches in files

---

## Command History and Customization

- `history` : Show command history
- `history | grep "ls"` : Search command history for `ls`
- `alias` : Customize command aliases

---

## Shortcuts

- `Ctrl + A` : Move to the start of a command
- `Ctrl + E` : Move to the end of a command
- `Ctrl + K` : Remove everything after the cursor
- `Ctrl + U` : Remove the entire command
- `Tab` : Auto-complete a command
- `!<Command number>` : Execute a command by its number (from history)
- `Ctrl + R` : Search for a previous command
- `Ctrl + L` : Clear the screen

---

## Sorting and Job Control

- `sort <companies.txt>` : Sort content
- `sort -r <companies.txt>` : Sort in reverse order
- `sort -f <companies.txt>` : Sort case-insensitive
- `sort -n <companies.txt>` : Sort numerically
- `jobs` : Show active jobs
- `ping` : Check connectivity status
- `wget <url>` : Download a file from the internet
- `wget -o <file name> <url>` : Download file and specify output file name
- `top` : View running processes and system stats
- `kill <process id>` : Kill a process
- `uname` : Show kernel information

---

## Compression and File Management

- `zip <file.zip> <companies.txt> <names.txt>` : Compress files
- `unzip <file.zip>` : Unzip files
- `hostname` : Show DNS name
- `useradd <username>` : Add a new user
- `passwd <username>` : Set password for a user
- `userdel <username>` : Delete a user

---

## System Information and Monitoring

- `uname -o` : Show kernel type
- `uname -m` : Show system architecture
- `uname -r` : Show kernel version
- `cat /etc/os-release` : Show OS details
- `lscpu` : Show CPU details
- `free` : Show free memory
- `free -h` : Show free memory (human-readable format)
- `vmstat` : Show virtual memory status
- `vmstat -S m` : Show memory in MB

---

## User and Group Information

- `id` : Show user and group ID
- `id -g` : Show group ID
- `id -G` : Show group IDs
- `id -r` : Show real user ID
- `getent group <kali>` : Check if user exists in group
- `id <kali>` : Show user ID for a specific user

---

## File Management Utilities

- `lsof` : List open files
- `lsof -u <kali>` : List open files for a specific user
- `nslookup google.com` : Get the IP address of a domain
- `netstat` : Check active network ports
- `sed` : Stream editor
- `cut -c 1-2 names.txt` : Cut specific columns in a file
- `htop` : Check resource usage by processes
- `ps aux` : Show all processes and utilization

---

## Process Management and Operators

- `&` : Run a process in the background
- `&&` : Execute second command after first command succeeds
- `||` : Execute second command if the first command fails
- `|` : Send output of the first command to the second command
- `!` : Negation operator
- `>>` : Append command output to a file
- `>` : Overwrite file with command output
- `\` : Concatenate commands line by line
- `echo "hey" && {echo "hii"; echo "i am fine"}` : Combination of commands

---

Enjoy using these commands for efficient Linux system operations!
