#!/bin/sh

# fixes permissions of all repositories

chown www-data:www-data -R */
chmod -R o-w,gu+w,ugo+rX */
chmod g-w */format
chmod g-w */db/format
chmod ug+x */hooks/pre-revprop-change
