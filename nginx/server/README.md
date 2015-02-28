dresden-weekly.Rails/nginx/server
=======================

Install, configure and store facts about Nginx

Requirements
------------

* Ubuntu 12.04 (Precise)
* Ubuntu 14.04 (Trusty)

Dependencies
------------

none

Facts
-----

* **NGINX_SERVICE_NAME** - name of the nginx service for later restarts
* **NGINX_USER** - system user that nginx runs as
* **NGINX_CONFIG_INCLUDE_PATH** - path for extra configuration files
* **NGINX_SITES_AVAILABLE_PATH** - path where site configurations are located
* **NGINX_SITES_ENABLED_PATH** - path for symbolic links of enabled sites
