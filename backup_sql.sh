#!/bin/bash

# Script to back up a MySQL database and compress the backup file

# Load configuration from a separate file
source config.sh

# Function to display usage information
usage() {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
    echo "  --db_name       Name of the database to back up"
    echo "  --output_dir    Directory to save the backup file"
    echo "  --no-compress   Do not compress the backup file"
    echo "  -h, --help      Show this help message"
}

# Parse command-line arguments
DB_NAME=""
OUTPUT_DIR=""
COMPRESS=true

while [[ "$1" != "" ]]; do
    case $1 in
        --db_name )         shift
                            DB_NAME=$1
                            ;;
        --output_dir )      shift
                            OUTPUT_DIR=$1
                            ;;
        --no-compress )     COMPRESS=false
                            ;;
        -h | --help )       usage
                            exit
                            ;;
        * )                 usage
                            exit 1
    esac
    shift
done

# Check if mandatory parameters are provided
if [ -z "$DB_NAME" ] || [ -z "$OUTPUT_DIR" ]; then
    usage
    exit 1
fi

# Create a timestamp
DATE=$(date +"%Y%m%d%H%M")

# Backup command
BACKUP_FILE="${OUTPUT_DIR}/${DB_NAME}_${DATE}.sql"
mysqldump --user=${USER} --password=${PASSWORD} --host=${HOST} ${DB_NAME} > ${BACKUP_FILE}

# Compress the backup file if not disabled
if $COMPRESS; then
    gzip ${BACKUP_FILE}
    BACKUP_FILE="${BACKUP_FILE}.gz"
fi

echo "Backup completed: ${BACKUP_FILE}"
