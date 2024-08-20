dresden-weekly.rails/unicorn/service
======================

Configure the init system to start unicorn and store facts

Requirements
------------

* Ubuntu 12.04 (Trusty)
* Ubuntu 14.04 (Trusty)
* Ubuntu 16.04 (Xenial)
* CentOS 7

Dependencies
------------

* **dresden-weekly.rails/rails/folders** - facts about app locations

Relations
---------

* **dresden-weekly.rails/ruby/rvm** - supports the RUBY_PREFIX

Facts
-----

* **APP_URL** - url for the webserver to forward requests for the application server
