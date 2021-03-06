#! /bin/sh

_info_foreach(){
  cat << EOF
Runs the given command(s) in each submodule.
EOF
}

_core_check_foreach() {
  if [ "${1:-''}" = "-h" ];then
    >&2 cat  << EOF
$(basename "${0}") foreach -- Information

This action will execute the given command inside each project in the meta repo.

Usage:
> $(basename "${0}") foreach [-h] cmd args...

h)
  prints out the help message here
EOF
    exit 0
  fi
  git submodule foreach "$@"
}
