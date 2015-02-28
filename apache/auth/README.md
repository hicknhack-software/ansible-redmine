hicknhack-software.redmine/apache/auth
============================

Installs and activates the Redmine.pm perl module that allows authentification and authorisation directly with the Redmine database.

Requirements
------------

* Ubuntu 14.04 (Trusty)

Dependencies
------------

* **dresden-weekly.Rails/apache/server** - apache server and facts about pathes
* fact: **DATABASE_URL** - How to connect to the Redmine database

Facts
-----

* **REDMINE_APACHE_AUTH_PERL_PACKAGE** - name of the Perl package of Redmine.pm
* **REDMINE_APACHE_AUTH_DSN** - Perl DBI string used to connect to the Redmine database
* **REDMINE_APACHE_AUTH_DB_USER** - Redmine database user
* **REDMINE_APACHE_AUTH_DB_PASSWORD** - Redmine database password

This is part of the `hicknhack-software.redmine` role collection.
