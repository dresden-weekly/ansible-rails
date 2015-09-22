## Database/Backup

Simple rotating SQL dump written to specified folder (e.g. /var/backup). At the moment PostgreSQL + MySQL supported.


## USAGE

```yaml
  roles:
  - role: dresden-weekly.Rails/database/backup
    database_backup_name: '{{app_name}}_{{rails_env}}'
    database_backup_type: 'postgresql'
    database_backup_base_dir: '/var/backup'
```

This will create the folder if not exists and create daily cronjob (default 4am) which dumps the database to ``/var/backup/somedb_production/TIMESTAMP.sql``. It will also keep the 7 most recent dumps and delete older ones.


## Supported variables:

See defaults/main.yml
