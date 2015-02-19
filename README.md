hickhack-software.redmine
====================

A set of roles that help to deploy the Redmine web application.

Requirements
------------

* Ubuntu 14.04 (Trusty)

Content Roles
-------------

* **config** create the necessary configurations for Redmine
* **default_data** load the Redmine default_data and change the intial admin password
* **rmagick** imagemagick support for Redmine

Dependencies
------------

* dresden-weekly.Rails roles

You may want to use our [vagrant-ansible-remote](https://github.com/dresden-weekly/vagrant-ansible-remote) for testing and deploying

Example Playbook
----------------

See our example: https://github.com/hicknhack-software/ansible-redmine-example

Changelog
---------

**0.1** (upcoming)

* Essentials to configure and run Redmine base installation

Roadmap
-------

* SCM
  * ☐ Git Hosting
  * ☐ SVN Hosting 
* Database support
  * ☐ MySql
* Install Redmine Plugins
* Activate Redmine Skins

License
-------

The MIT License (MIT)

Copyright (c) 2015 HicknHack Software GmbH

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
