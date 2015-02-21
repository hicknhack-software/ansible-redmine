#!/bin/sh

# fixes permissions of all repositories

chown www-data:www-data -R */
chmod -R o-rwx,g+w */
