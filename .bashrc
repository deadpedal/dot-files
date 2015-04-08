# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# loop through .bashrc.d folder and importing every file
if [ -d ${HOME}/.bashrc.d ]; then
  for file in ${HOME}/.bashrc.d/*; do
    source "$file";
  done
fi
