#!/bin/bash
#
# File maintained by ansible. Do not change by hand!
#

FORCE=0

function usage {
  echo -e "\nUsage: $(basename $0) [-f|--force] PATH"
  echo -e "-f --force\t force the creation even if PATH exists"
  echo -e "Creates a svn repository a the given path.\n"
}

#
# Creates an svn repository
# $1 the Repository
#
function create_svn {

	local SVN_PATH=$1
	echo "Creating repository at $SVN_PATH"
	svnadmin create "$SVN_PATH"
	echo "Fixing permissions in Repository"
	chown www-data:www-data -R "$SVN_PATH"
	chmod -R o-rwx,g+w "$SVN_PATH"
	chmod g-w "$SVN_PATH/format"
	chmod g-w "$SVN_PATH/db/format"

	echo "Cleaning up..."
	rm $SVN_PATH/README.txt
	mv $SVN_PATH/hooks/pre-revprop-change.tmpl $SVN_PATH/hooks/pre-revprop-change
	chmod ug+x "$SVN_PATH/hooks/pre-revprop-change"
	echo "Done."
}

#
# Main
#
if [ $# -eq 0 ] || [ $# -gt 2 ]; then
	usage
	exit 1
elif [ $# -eq 2 ]; then
	if [ "$1" = "--force" ] || [ "$1" = "-f" ]; then
		FORCE=1
	else
		usage
	fi
	REP=$2
else
	REP=$1
fi

if [ -d $REP ] || [ -f $REP ]; then
	echo "$REP already present."
	if [ $FORCE -eq 1 ]; then
		echo "Overwrite forced."
		rm -rf $REP
		create_svn $REP
	else
		echo "Will not overwrite $REP."
		echo "Use -f|--force to force overwrite."
		exit 1
	fi
else
	create_svn $REP
fi
