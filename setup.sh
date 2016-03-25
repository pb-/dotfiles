#!/bin/bash
#
# Set up links from $HOME to the individual files in this
# repository (unless the link names already exist)
#

set -e

cd "$(dirname "$0")/files"
pwd=$(pwd)

find . -type f | while read rel_name
do
	rel_name="${rel_name##./}"
	link_name="$HOME/$rel_name"
	target="$pwd/$rel_name"

	if [ -e "$link_name" ]
	then
		echo "skip: $link_name (file exists)"
	else
		mkdir -p "$(dirname "$link_name")"
		echo -n "link: "
		ln -rsv "$target" "$link_name"
	fi
done
