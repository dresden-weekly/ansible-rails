dresden-weekly.Rails/rails/folders
=====================

Creates and exports the folder structure for Rails deployments

Requirements
------------

Ubuntu 12.04 (Precise) or Ubuntu 14.04 (Trusty)

Dependencies
------------

rails_app_owner & rails_app_group have to be present

Facts
-----

* **RAILS_APP_BASE_PATH** - base path for the Rails app
* **RAILS_APP_OWNER** - user who own all files and folders
* **RAILS_APP_GROUP** - group who for all files and folders
* **RAILS_APP_RELEASES_PATH** - path where all releases are stored
* **RAILS_APP_CURRENT_PATH** - path that links to the current release
* **RAILS_APP_CURRENT_PUBLIC_PATH** - path for the public webserver assets
* **RAILS_APP_SHARED_PATH** - base path for files and folders shared between releases
* **RAILS_APP_CONFIG_PATH** - path for configuration files
* **RAILS_APP_LOG_PATH** - path where all application logs are stored
* **RAILS_APP_TMP_PATH** - path for all temporaries
* **RAILS_APP_PIDS_PATH** - path for process ids
* **RAILS_APP_RESTART_PATH** - path that is touched to trigger an application server restart
