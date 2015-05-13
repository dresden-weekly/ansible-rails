dresden-weekly.Rails/apache/server
====================

Install and configure the Apache webserver

Requirements
------------

* Ubuntu 14.04 (Trusty)
* Apache 2.4

Dependencies
------------

none

Facts
-----

* **APACHE_SERVER_CONF_AVAILABLE_PATH** - path where additional configurations are stored (activate with a2enconf)
* **APACHE_SERVER_SITES_AVAILABLE_PATH** - path where sites/vhosts configurations are stored (activate with a2ensite)
* **APACHE_SERVER_SITES_INCLUDE_PATH** - base path where vhost folders where additional includes are stored
* **APACHE_SERVER_SERVICE** - name of the Apache service for later restarts
* **APACHE_SERVER_USER** - name of the Apache service user
* **APACHE_SERVER_GROUP** - name of the Apache service user group
