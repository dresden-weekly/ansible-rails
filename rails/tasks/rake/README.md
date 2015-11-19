# Rake Task

Simple Role to run Rake Task in app, e.g. for clearing cache:

```yaml
- role: dresden-weekly.Rails/rails/tasks/rake
  rake_task: 'tmp:cache:clear'
  rake_task_run_once: false
```

