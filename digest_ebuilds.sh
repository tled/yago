#!/bin/sh

# ensures that we are in the right working directory...
p="`realpath "${0}"`"
if [[ "`dirname "${p}"`" != "`pwd`" ]]; then
	echo "wrong working directory..."
	exit 1
fi

# digest all ebuilds
for c in *-* ; do
	if [ -d "${c}" ]; then
		pushd "${c}"
		for app in *; do
			if [ -d "${app}" ]; then
				pushd "${app}"
				for e in *ebuild; do
					ebuild "${e}" digest
				done
			fi
			popd
		done
		popd
	fi
done
