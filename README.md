dresden-weekly.Rails
====================

Our think-tank for modules and playbooks that help to deploy Ruby on Rails applications

This repository contains many roles that you can glue together to represent your individual Rails deployment.

Requirements
------------

Ubuntu 12.04 (Precise) or Ubuntu 14.04 (Trusty)

Content Roles
-------------

Provisioning:

* **create-user** create a user according to a profile hash
* **postgresql** install a PostgreSQL 9.3 database
* **upstart/userjobs** enables Upstart userjobs
* **ruby/rvm** installs a specific Ruby version with rvm
* **ruby/postgresql** allow ruby to access postgresql
* **rails/create-folders** prepares a folder for Rails releases
* **rails/logrotate** create logrotate configuration for Rails logs
* **nginx/server** install nginx webserver
* **nginx/puma** prepare nginx for puma appserver
* **nginx/webrick** prepare nginx for webrick apperserver
* **puma/upstart** install userjob for puma
* **webrick/upstart** install userjob for webrick

Deployment:

* **rails/create-release** create a new release from a git repo
* **rails/use-vagrant** create the vagrant release from a vagrant share
* **rails/tasks/bundle** install all bundles gems
* **rails/tasks/migrate-database** run Rails database migrations
* **rails/tasks/compile-assets** create the precompiled assets
* **rails/update-current** change the symlink for the current release
* **rails/cleanup-old-releases** only keep N last releases

Dependencies
------------

no other roles currently

You may want to use our [vagrant-ansible-remote](https://github.com/dresden-weekly/vagrant-ansible-remote) for testing and deploying

Example Playbook
----------------

See our example: https://github.com/dresden-weekly/ansible-rails-example

Changelog
---------

**0.1** (first release) *planned*

* (Your pull requests)
* Features
  * ✔ Windows Vagrant support
  * ✔ Simple Remote-Tool to trigger deployments
* Release Management
  * ✔ Git based release management
  * ✔ Vagrant shared folder based releases for development
* Webservers
  * ✔ nginx
* Rails application servers
  * ✔ puma
  * ✔ webrick
* Database support
  * ✔ PostgreSql
* Ruby installation
  * ✔ RVM
* Configuration management
  * ✔ Deployment User environment variables
* Linux distributions
  * ✔ Ubuntu 12.04
  * ✔ Ubuntu 14.04

Roadmap
-------

* Features
  * multiple machine deployment (requires a test)
  * skip deploy if nothing changed, unless forced 
* Release Management
  * Download based releases
* Webserver
  * Apache
  * Passenger Standalone
* Rails Application Server
  * Passenger on NGINX
  * Passenger on Apache
  * Thin
  * Unicorn
* Database support
  * MySql
  * Sqlite3 (for vagrant development)
* Ruby installation
  * Package based
* Configuration management
  * Generator for secrets.yml
  * Generator for database.yml
* Linux distribution
  * CentOS

License
-------

The MIT License (MIT)

Copyright (c) 2014 dresden-weekly

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


