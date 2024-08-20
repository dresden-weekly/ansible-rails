dresden-weekly.rails/rails/publish-assets
================================

Distribute the assets from the application servers to the webservers

Requirements
------------

* Ubuntu 12.04 (Precise)
* Ubuntu 14.04 (Trusty)
* ssh access to the deploy user of both servers
* `groups['app']` should contain the application servers, if your host as an other name you can also customize `app_group`

Dependencies
------------

* **dresden-weekly.rails/rails/folders** - facts of the current server
* **dresden-weekly.rails/rails/tasks/compile-assets** - on the application server

Facts
-----

* **RAILS_APP_RELEASE_ID** - copied fact from the application server
* **RAILS_APP_RELEASE_PATH** - local path for the release
