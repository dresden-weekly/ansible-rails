## Create release



### Provide shared files

Files like ``database.yml``, ``secrets.yml`` and Rails ``Rails.application.config_for(:somefile)`` yaml or verbatim (plain) files can be provided by this role.

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
  - file: config/somekey.crt
    plain: |
      some verbatim config
  - file: config/somekey.crt
    plain: "{{some_variable_for_file_content}}"
```

Those file will be placed relativ to the shared folders and symlinked into the release/current folders.


### Webpacker integration

Just set this variable in your provisioning/deployment:

```yaml
rails_webpacker: yes

# if you are using Webpacker 4+, change that to:
rails_webpacker: 4
```

This will:

1. (this role) Export these files from git in addition to the defaults: yarn.lock package.json .babelrc .postcssrc.yml (babel.config.js and postcss.config.js if using Webpacker 4)
2. (this role) Keep/Symlink public/packs and node_modules between deployments
3. (asset precompilation) ``rake yarn:install`` is run by ``rails assets:precompile`` (from +5.1), if a bin/yarn binstub is provided. **NOTE** without that binstub no node_modules are installed! Make sure to add it with ``rails app:update:bin`` and commit to your app repo.

You might also want to include the [**yarn**](https://github.com/dresden-weekly/ansible-rails/tree/develop/yarn) Installs nodejs + yarn (default nodejs-6.x) role in your provisioning before, to install required nodejs + yarn.

