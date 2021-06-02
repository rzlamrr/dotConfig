#!/bin/bash

# Copy all file or directory start with "." except ".git" to $HOME
# shellcheck disable=SC2044
for i in $(find ./ -maxdepth 1 -path "./.*"); do
	if [[ "$i" != "./.git" ]]; then
		cp -rf $i ~/
	fi
done
echo "Done"