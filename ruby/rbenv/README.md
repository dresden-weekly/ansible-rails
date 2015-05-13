dresden-weekly.Rails/ruby/rbenv
===============================

This role installs [rbenv](https://github.com/sstephenson/rbenv/wiki/Why-rbenv%3F) for a given user and (re-)sets the *global* rbenv ruby version.

Requirements
------------

Ubuntu 12.04 (Precise), Ubuntu 14.04 (Trusty), or CentOS 7

Dependencies
------------

The user ("app_user") has to exist!

Facts
-----

* **RUBY_PREFIX** - contains the command prefix required to run commands with the *default* ruby version. (Only required for non shell invocations compatible with the [rvm-role](../rvm/).)
