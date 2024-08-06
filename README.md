# SQL Backup Script

This repository contains a Bash script to back up a MySQL database and optionally compress the backup file.

## Features

- **Database Backup**: Backs up the specified MySQL database.
- **Compression**: Optionally compresses the backup file to save space.
- **Configuration**: Easy configuration through a separate `config.sh` file.
- **Customizable**: Allows custom output directory and database name via command-line arguments.

## Usage

1. **Clone the Repository**:

   ```sh
   git clone https://github.com/your_username/sql-backup-script.git
   cd sql-backup-script

2. **Run the Script**:

   ```sh
   ./backup_sql.sh --db_name your_database_name --output_dir /path/to/backup

