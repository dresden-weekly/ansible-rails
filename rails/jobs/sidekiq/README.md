## Sidekiq

This role creates a sidekiq worker that is managed via Upstart.

It requires:

* Userjobs Role from Ansible-Rails
* Some installed and running Redis (not provided by Ansible-Rails) respectively given redis_url reachable

It will create a upstart-job in ``~/.init/APP_NAME.conf``

Variables:

```yaml
sidekiq_upstart_user: '{{app_user}}'
sidekiq_job_name: '{{app_name}}'
sidekiq_upstart_conf: '/home/{{sidekiq_upstart_user}}/.init/{{sidekiq_job_name}}.conf'
sidekiq_worker_index: 0
sidekiq_rails_env: '{{rails_env}}'
sidekiq_log_file: '{{ RAILS_APP_SHARED_PATH }}/log/sidekiq.log'
sidekiq_config_file: '{{ RAILS_APP_SHARED_PATH }}/config/sidekiq.yml'
sidekiq_concurrency: 10
sidekiq_configuration_redis_url: 'redis://localhost:6379/0'
sidekiq_configuration_verbose: true
sidekiq_configuration_queues:
  - [important, 10]
  - [default, 2]
  - [low, 1]
```

## Usage:

1. Server provisioning

creates the job file

After the userjob / redis:

```yaml
  - role: dresden-weekly.Rails/upstart/userjobs
    users:
      - "{{app_user}}"
  - role: dresden-weekly.Rails/rails/jobs/sidekiq
    sidekiq_configuration_concurrency: 5
```

2. (Graceful) restart on deploy

Somewhere at the beginning of your deployment:

```yaml
  - role: dresden-weekly.rails/rails/jobs/sidekiq/restart
```

This will trigger a graceful shutdown. Sidekiq won't take any new jobs from this point.
At the end of the deployment a complete restart with service handlers is executed.

