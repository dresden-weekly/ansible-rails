### Nginx Passenger

* Installs nginx via ppa and configs it
* Passenger related configuration

* NO TLS/SSL config for nginx so far - we have another Router/Load Balancer in
  front of our apps so we don't need that for this role. If you are interesting
  in adding https than feel free to add a PR.
* Various default configs for /etc/nginx/conf.d/*


### USAGE

This role is intended to run together with ansible-Rails' other provisioning roles. It does not need to run on deployment step, as it uses the default touch tmp/restart.txt method.

```
roles:
  - ...
  - role: dresden-weekly.Rails/nginx/passenger
    app_name: 'myapp'
    app_hosts: 'www.myapp.de myapp.de en.myapp.de'
    passenger_enable_action_cable: true
    passenger_enable_message_bus: true
    passenger_max_pool_size: 10
    nginx_max_body_size: 100M

```

Default config implements some common practices like:

* Cache-Header for /assets, as well as /system /uploads/ /photos (var: nginx_public_folder_to_cache)
* https requirement for Omniauth /auth route paths. Most Social networks now only allow callback domains via ssl only
* optional: message-bus or ActionCable optimization. If you are using message_bus gem for "realtime" communication with frontend, you run into problems with passenger in default config. The messages sometimes take long time for delivery. The recommended fix is to run another passenger process in parallel that handles these. The same is true for ActionCable if you are running in the default Rails-moutend way.
  YOU WILL ALSO NEED TO ADD A SNIPPET TO YOUR APPLICATION-CODE:  https://github.com/SamSaffron/message_bus#passenger. Enable with passenger_enable_action_cable / passenger_enable_message_bus






