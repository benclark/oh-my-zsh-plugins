_repo_list() {
  _wanted 'repo' expl 'repo' compadd $([ -d "$HOME/Sites" ] && find "$HOME/Sites" -maxdepth 1 -mindepth 1 -type d -exec basename {} \+)
}

repo() {
  local basedir=$HOME/Sites/$1
  if [ -d "$basedir/repo/docroot" ]; then
    cd "$basedir/repo/docroot"
  elif [ -d "$basedir/repo" ]; then
    cd "$basedir/repo"
  elif [ -d "$basedir" ]; then
    cd "$basedir"
  else
    echo "Invalid repo."
    return
  fi
}
