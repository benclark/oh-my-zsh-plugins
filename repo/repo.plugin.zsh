_repo_list() {
  cd $HOME/Sites
  _wanted 'repo' expl 'repo' compadd $(ls -1d *)
}

repo() {
  local basedir=$HOME/Sites/$1
  if [ -d "$basedir/repo/docroot" ]; then
    cd "$basedir/repo/docroot"
  elif [ -d "$basedir/repo" ]; then
    cd "$basedir/repo"
  elif [ -d "$basedir/trunk" ]; then
    cd "$basedir/trunk"
  elif [ -d "$basedir" ]; then
    cd "$basedir"
  else
    echo "Invalid repo."
    return
  fi
}
