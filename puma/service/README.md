dresden-weekly.Rails/puma/service
======================

Configure the init system to start puma and store facts

Requirements
------------

* Ubuntu 12.04 (Trusty)
* Ubuntu 14.04 (Trusty)
* Ubuntu 16.04 (Xenial)
* CentOS 7

Dependencies
------------

* **dresden-weekly.Rails/rails/folders** - facts about app locations

Relations
---------

* **dresden-weekly.Rails/ruby/rvm** - supports the RUBY_PREFIX

Facts
-----

* **APP_URL** - url for the webserver to forward requests for the application server
