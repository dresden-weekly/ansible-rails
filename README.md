dresden-weekly.Rails
====================
[![Ansible Galaxy](https://img.shields.io/badge/Ansible%20Galaxy-dresden--weekly.Rails-blue.svg)](https://galaxy.ansible.com/list#/roles/2108)

Our think-tank for modules and playbooks that help to deploy Ruby on Rails applications

This repository contains many roles that you can glue together to represent your individual Rails deployment.

Requirements
------------

* Ubuntu 12.04 (Precise)
* Ubuntu 14.04 (Trusty)
* CentOS 7

Content Roles
-------------

Provisioning:

* **user/profile** store facts to .profile and .bashrc
* [**postgresql**](https://github.com/dresden-weekly/ansible-rails/tree/develop/postgresql) install a PostgreSQL 9.3 database
* [**database/backup**](https://github.com/dresden-weekly/ansible-rails/tree/develop/database/backup) Simple rotating SQL dump backups
* **upstart/userjobs** enables Upstart userjobs
* [**ruby/rvm**](https://github.com/dresden-weekly/ansible-rails/tree/develop/ruby/rvm) installs a specific Ruby version with rvm
* [**ruby/rbenv**](https://github.com/dresden-weekly/ansible-rails/tree/develop/ruby/rbenv) installs a specific Ruby version with rbenv
* **ruby/postgresql** support for postgresql client gems
* **ruby/imagemagick** installs the popular image manipulation tool with support for rmagick binding and some image optimization libraries
* **ruby/sqlite3** support for sqlite3 client gems
* **ruby/mysql** support for mysql client gems
* **rails/create-folders** prepares a folder for Rails releases
* [**rails/logrotate**](https://github.com/dresden-weekly/ansible-rails/tree/develop/rails/logrotate) create logrotate configuration for Rails logs
* [**rails/jobs/sidekiq**](https://github.com/dresden-weekly/ansible-rails/tree/develop/rails/jobs/sidekiq) manage/restart sidekiq as a upstart job
* [**nginx/server**](https://github.com/dresden-weekly/ansible-rails/tree/develop/nginx/server) install nginx webserver
* **nginx/passenger** install nginx webserver
* [**nginx/puma**](https://github.com/dresden-weekly/ansible-rails/tree/develop/nginx/puma) prepare nginx for puma appserver
* [**nginx/webrick**](https://github.com/dresden-weekly/ansible-rails/tree/develop/nginx/webrick) prepare nginx for webrick apperserver
* [**puma/upstart**](https://github.com/dresden-weekly/ansible-rails/tree/develop/puma/upstart) install userjob for puma
* [**webrick/service**](https://github.com/dresden-weekly/ansible-rails/tree/develop/webrick/service) setup init system to start webrick
* [**apache/server**](https://github.com/dresden-weekly/ansible-rails/tree/develop/apache/server) install and configure apache server
* [**apache/passenger**](https://github.com/dresden-weekly/ansible-rails/tree/develop/apache/passenger) install and configure passenger for apache
* **firewalld** configure firewalld (for CentOS)
* **selinux** currently only enable/disable selinux on CentOS

Deployment:

* **rails/create-release** create a new release from a git repo
* **rails/use-vagrant** create the vagrant release from a vagrant share
* **rails/tasks/bundle** install all bundles gems
* **rails/jobs/sidekiq/restart** see Sidekiq role
* **rails/tasks/migrate-database** run Rails database migrations
* **rails/tasks/compile-assets** create the precompiled assets
* [**rails/publish-assets**](https://github.com/dresden-weekly/ansible-rails/tree/develop/rails/publish-assets) transfer compiled assets from app- to web-servers
* **rails/update-current** change the symlink for the current release
* [**rails/tasks/whenever**](https://github.com/dresden-weekly/ansible-rails/tree/develop/rails/tasks/whenever) update crontab of app user using whenever Gem
* **rails/cleanup-old-releases** only keep N last releases
* **rails/rollback** rollback the the previous and delete the current release
* [**rails/tasks/rake**](https://github.com/dresden-weekly/ansible-rails/tree/develop/rails/tasks/rake) Run arbitrary Rake task on app

Dependencies
------------

no other roles currently

You may want to use our [vagrant-ansible-remote](https://github.com/dresden-weekly/vagrant-ansible-remote) for testing and deploying

Example Playbook
----------------

### Github based single tier deployment

[dresden-weekly/ansible-rails-example@simple](https://github.com/dresden-weekly/ansible-rails-example/tree/simple)
* Git based deployment
* single tier
* PostgreSql database
* Nginx Webserver
* Webrick as application server
* Support for Vagrant based development

[dresden-weekly/ansible-rails-example@threetier](https://github.com/dresden-weekly/ansible-rails-example/tree/threetier)
* like simple but for classic 3-tier deployment
  1. database
  1. rails application servers
  1. web-servers

[hicknhack-software/ansible-redmine-example](https://github.com/hicknhack-software/ansible-redmine-example)
* stable version based deployment
* single tier with Git and Subversion hosting
* MySql database
* Apache webserver
* Passenger as application server
* customized for Redmine

[stefanwienert.de/ansible](http://www.stefanwienert.de/blog/2015/10/29/deploying-rails-with-ansible-with-dresden-weekly-toolbox/)
* Blog post that explains on how to use this role for deploying a Rails app

Changelog
---------

**0.3** (stables) *planned*

* (Your pull requests are welcome)

**0.2** (more features!) 13.05.2015

* Features
  * [x] multiple machine deployment (see three tier example)
  * [x] skip deploy if nothing changed (using stable release names)
* Webserver
  * [x] Apache (see redmine example)
* Rails Application Server
  * [x] Passenger on Apache
* Database support
  * [x] MySql (see redmine example)
  * [x] Sqlite3
* Ruby installation
  * [x] rbenv (contributed by @tnt)
* Linux distribution
  * [x] CentOS (simple)

**0.1** (first release) 09.01.2015

* Features
  * [x] Windows Vagrant support
  * [x] Simple Remote-Tool to trigger deployments
* Release Management
  * [x] Git based release management
  * [x] Vagrant shared folder based releases for development
* Webservers
  * [x] nginx
* Rails application servers
  * [x] puma
  * [x] webrick
* Database support
  * [x] PostgreSql
* Ruby installation
  * [x] RVM
* Configuration management
  * [x] Deployment User environment variables
* Linux distributions
  * [x] Ubuntu 12.04
  * [x] Ubuntu 14.04

Roadmap
-------

* Release Management
  * [ ] Download based releases
* Webserver
  * [ ] Passenger Standalone
* Rails Application Server
  * [ ] Passenger on NGINX
  * [ ] Thin
  * [ ] Unicorn
* Ruby installation
  * [ ] Package based
* Configuration management
  * [ ] Generator for secrets.yml
  * [ ] Generator for database.yml
* Linux distribution
  * [ ] Ubuntu 15.04
  * [ ] CentOS (remaining parts)

License
-------

The MIT License (MIT)

Copyright (c) 2015 dresden-weekly

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
