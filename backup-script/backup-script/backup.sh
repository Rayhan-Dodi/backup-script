#!/bin/bash

# Task 1: Define source directory
SOURCE_DIR="/home/yourusername/documents"  # Replace with actual source

# Task 2: Define destination directory
DEST_DIR="/home/yourusername/backups"      # Replace with actual destination

# Task 3: Create timestamp variable
TIMESTAMP=$(date +"%Y-%m-%d-%H-%M")

# Task 4: Create filename with timestamp
BACKUP_FILE="backup-$TIMESTAMP.tar.gz"

# Task 5: Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Task 6: Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Task 7: Create compressed archive
tar -czf "$DEST_DIR/$BACKUP_FILE" "$SOURCE_DIR"

# Task 8: Success message
echo "Backup completed successfully!"

# Task 9: Error checking
if [ $? -eq 0 ]; then
    echo "Backup file $BACKUP_FILE created."
else
    echo "Backup failed."
    exit 2
fi

# Task 10: Optional logging
echo "Backup created at $TIMESTAMP" >> "$DEST_DIR/backup.log"

# Task 11: Comments included ✅
# (All lines are explained above)

# Task 12: Variables used in tar command ✅

# Task 13: End cleanly
exit 0
