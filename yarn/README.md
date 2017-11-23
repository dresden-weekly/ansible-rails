## Nodejs + Yarn

Intended to run during initial provisioning.

```yaml
- role: dresden-weekly.rails/yarn
  nodejs_version: 'nodejs-v6x'
```

Installs Yarn + Nodejs via ppa/apt repository

**NOTE**: If you want to use yarn, you also might want to enable yarn:install step during deployment, see [**rails/create-release**](https://github.com/dresden-weekly/ansible-rails/tree/develop/rails/create-release)

