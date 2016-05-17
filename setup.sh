#!/bin/bash
#
# Set up links from $HOME to the individual files in this
# repository (unless the link names already exist)
#

def="\033[0m"
gray="\033[90m"
green="\033[92m"
yellow="\033[93m"
cyan="\033[96m"

set -e

cd "$(dirname "$0")/files"
pwd=$(pwd)

find . -type f | sort | while read rel_name
do
	rel_name="${rel_name##./}"
	link_name="$HOME/$rel_name"
	target="$pwd/$rel_name"

	if [ "$(dirname "$rel_name")" == '.' ]
	then
		fmt_name="$def$rel_name"
	else
		fmt_name="$gray$(dirname "$rel_name")/$def$(basename "$rel_name")"
	fi

	if [ -f "$link_name" ] || [ -L "$link_name" ]
	then

		if [ -L "$link_name" ]
		then
			link_target="$(readlink -m "$link_name")"
			if [ "$link_target" == "$target" ]
			then
				echo -e " ${green}managed: $fmt_name$def"
				continue
			fi
		fi

		echo -e "  ${yellow}manual: $fmt_name$def"
	else
		mkdir -p "$(dirname "$link_name")"
		echo -e "    ${cyan}link: $fmt_name$def"
		ln -rs "$target" "$link_name"
	fi
done
