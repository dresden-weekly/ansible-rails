## MailRoom

Enables a systemd service job for the ``mail_room`` exec, that enables your app to listen for incoming emails.

Vars:

```yaml
mailroom_job_name: "mailroom-{{ app_name }}"
mailroom_config_file: "{{ RAILS_APP_SHARED_PATH }}/config/mailroom.yml"
mailroom_user: "{{app_user}}"
```

## Usage:

### 1. Server provisioning

creates the systemd unit job and enables it

```yaml
  - role: dresden-weekly.Rails/rails/jobs/mailroom
```

MailRoom works great in combination with Sidekiq. This Role does not provide a method for creating the mailroom config at the moment. It need to be delivered via other methods (provision files, part of app code)

### 2. Restart on deploy

Maybe not necessary, when you never change the Delivery Settings/Config File or the Sidekiq Worker name that changes for a job

```yaml
  - role: dresden-weekly.rails/rails/jobs/mailroom/restart
```
