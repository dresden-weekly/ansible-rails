## Create release



### Provide shared files

Files like ``database.yml``, ``secrets.yml`` and Rails ``Rails.application.config_for(:somefile)`` yaml files can be provided by this role.

```yaml
rails_provisioned_files:
  - file: config/database.yml
    yaml:
      production:
        adapter: postgresql
        database: '{{rails_database_name}}'
        encoding: UTF8
        pool: 30
  - file: config/database.yml
    yaml:
      production:
        secret_key_base: '...'
        twitter_api_key: '...'
```

Those file will be placed relativ to the shared folders and symlinked into the release/current folders.
