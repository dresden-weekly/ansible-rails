dresden-weekly.Rails/puma/upstart
======================

Configure the puma application server, configure the upstart script and store facts

Requirements
------------

* Ubuntu 12.04 (Trusty)
* Ubuntu 14.04 (Trusty)
* Puma has to be embedded in the Ruby gems of the Rails application.

Dependencies
------------

* **dresden-weekly.Rails/rails/folders** - facts about app locations

Relations
---------

* **dresden-weekly.Rails/ruby/rvm** - supports the RUBY_PREFIX

Facts
-----

* **APP_URL** - url for the webserver to forward requests for the application server
