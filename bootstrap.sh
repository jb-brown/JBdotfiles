#!/usr/bin/env bash

dir="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Symlinking dotfiles from ${dir}"

startingPWD=$pwd
cd $dir

for path in "${dir}"/.*; do

	file=$(basename $path)
	if [ "$file" == ".git" ] || [ "$file" == "." ] || [ "$file" == ".." ]; then
		continue
	fi
	echo "Symlinking ${path} from $HOME/${file}"
	sudo rm -f "$HOME/${file}"
	ln -s "${path}" "$HOME/${file}"
done;
unset file;
cd $pwd
