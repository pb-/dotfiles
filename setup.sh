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
		if [ -L "$link_name" ]
		then
			echo "managed?: $link_name"
		else
			echo "manual: $link_name"
		fi
	else
		mkdir -p "$(dirname "$link_name")"
		echo -n "link: "
		ln -rsv "$target" "$link_name"
	fi
done
