## Whenever

Updates Crontab of ``app_user`` with crontab. Requires Gem ``whenever`` to be present in Gemfile.

### Usage:

```yaml
  roles:
    # ...
    - role: dresden-weekly.Rails/rails/tasks/whenever
```

- If using in any environment other than `production`, be sure to include the `@environment` argument (which comes in via `--set environment={{ rails_env}}` in the task) in your `config/schedule.rb` file, like this:

```
every 1.day, at: "4:00am" do
  rake "some_task:thing", environment: @environment
end
```
