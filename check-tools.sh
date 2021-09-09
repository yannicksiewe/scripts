#!/usr/bin/env sh

command=(aws aws-vault)

function ifexit() {
    if which $1 &>/dev/null; then
    	tput setaf 2
    	echo "$1 in path"
    else
      tput setaf 1
    	echo "error $1 No in PATH, please install it"
    fi
}

for i in ${command[@]};
  do
      ifexit $i
done

exit 0