# Linux Backup Script

This is a simple Bash script for creating compressed backups of a specified directory. It automatically adds a timestamp to each backup file and logs every successful backup in a log file.

## Features

- Creates `.tar.gz` compressed backups
- Automatically timestamps backup files
- Logs each backup to `backup.log`
- Checks if source and destination directories exist
- Automatically creates the destination directory if missing

## Usage

1. Edit the script to set your `SOURCE_DIR` and `DEST_DIR`.
2. Make it executable:
   ```bash
   chmod +x backup.sh
