dresden-weekly.Rails/ruby/rvm
=============================

This role installs rvm for a given user and manages the rvm ruby versions.

Requirements
------------

Ubuntu 12.04 (Precise) or Ubuntu 14.04 (Trusty)

Dependencies
------------

The rvm_user has to exist!

Facts
-----

* **RUBY_PREFIX** - contains the command prefix required to have the default ruby version in path. (Only required for non shell invocations)
