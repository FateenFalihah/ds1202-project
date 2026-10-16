DS1202 System Information Project

1. Project Overview

This project was developed for the DS1202 assignment. It contains a Bash script that displays system information from the lab server.

The project demonstrates Linux directory management, file permissions, SSH passwordless authentication, shell scripting, Git branching, merging and GitHub repository management.

2. Project Structure

ds1202-project/
├── scripts/
│   └── sysinfo.sh
├── docs/
├── logs/
│   └── sysinfo.log
└── README.md

The "scripts" directory contains the system information script. The "docs" directory is intended for project documentation, while "logs" stores generated reports.

3. Information Reported

The "sysinfo.sh" script reports:

- Hostname of the server
- Operating system
- Linux kernel version
- Memory usage
- Disk usage
- CPU load and system uptime
- Report generation date and time

The enhanced version also displays the report on the terminal and appends it to "logs/sysinfo.log".

4. Setup Instructions

Step 1: Generate an SSH key

On Windows PowerShell, generate an Ed25519 SSH key pair:

ssh-keygen -t ed25519 -C "26FTT1122@iib.politeknikbrunei.com"

The public key is stored in "~/.ssh/id_ed25519.pub" on Windows.

Step 2: Configure passwordless SSH

Copy the public key to the lab server and add it to the server's "~/.ssh/authorized_keys" file.

Set the correct permissions:

chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

Test the connection using:

ssh "26FTT1122@iib.politeknikbrunei.com"

Step 3: Create the project directories

On the lab server, run:

mkdir -p ~/ds1202-project/{scripts,docs,logs}
chmod 755 ~/ds1202-project
cd ~/ds1202-project

Step 4: Make the script executable

Run:

chmod +x scripts/sysinfo.sh

5. Running the Script

Run the following command from the project directory:

./scripts/sysinfo.sh

The script displays the system information report. The enhanced version saves the report to "logs/sysinfo.log".

6. Git Workflow

The following Git workflow was used:

1. Initialise the repository with "git init -b main".
2. Add and commit the initial directory structure and script.
3. Create the "feature-logging" branch.
4. Enhance the script with logging and additional system information.
5. Commit the changes on the feature branch.
6. Switch back to "main" and merge "feature-logging".
7. Create a public GitHub repository and configure the "origin" remote.
8. Push "main" and "feature-logging" to GitHub.

7. Evidence PDF Screenshots

The evidence PDF includes the following screenshots:

1. SSH key generation and public key setup.
2. Successful passwordless SSH login.
3. Project directory structure and permissions.
4. Initial system information script running successfully.
5. Git repository initialisation and initial commit.
6. Feature branch creation and enhanced script.
7. Logging output and generated log file.
8. Merge of "feature-logging" into "main".
9. GitHub public repository and remote configuration.
10. Successful push of both branches.
11. README.md displayed in the repository.

8. Conclusion

This project demonstrates the use of Linux commands, SSH authentication, Bash scripting and Git version control to create, enhance, test and publish a system information reporting tool.
