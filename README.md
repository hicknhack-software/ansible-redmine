hickhack-software.redmine
====================

A set of roles that help to deploy the Redmine web application.

Requirements
------------

* Ubuntu 24.04 (Noble)
* Ubuntu 22.04 (Jammy)

Content Roles
-------------

* **config** create the necessary configurations for Redmine
* **default-data** load the Redmine default_data and change the intial admin password
* **rmagick** imagemagick support for Redmine
* **apache/auth** configure and enable Apache authentication through Redmine
* **apache/subversion** host Subversion repositories through Apache (requires Redmine authentication)
* **apache/git** host Git repositories through Apache (requires Redmine authentication)
* **plugin/\*** support for selected plugins

Dependencies
------------

* [dresden-weekly.rails](https://github.com/dresden-weekly/ansible-rails) roles
* See `requiements.yml` for more

Example Playbook
----------------

See `tests/` folder, that is run by `docker-compose.yml` + overlays.

Changelog
---------

**0.1** (upcoming)

* Essentials to configure and run Redmine base installation

Roadmap
-------

* Activate Redmine Skins

License
-------

The MIT License (MIT)

Copyright (c) 2015-2025 HicknHack Software GmbH

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
