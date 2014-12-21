Role Name
=========

Our think-tank for modules and playbooks that help to deploy Ruby on Rails applications

Requirements
------------

Ubuntu 12.04/14.04

Role Variables
--------------


Dependencies
------------


Example Playbook
----------------

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
* Database support
  * ✔ PostgreSql
* Ruby installation
  * ✔ RVM
* Configuration management
  * ✔ Deployment User environment variables
* Linux distributions
  * ✔ Ubuntu 12.04

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
  * Ubuntu 14.04
  * CentOS

License
-------

BSD

