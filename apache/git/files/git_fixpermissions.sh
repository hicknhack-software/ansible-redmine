#!/bin/sh
#
# File maintained by ansible. Do not change by hand!
#
# fixes permissions of all repositories

chown www-data:www-data -R */
chmod -R o-rwx,g+w */
