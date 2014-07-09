_repo_list() {
  _wanted 'repo' expl 'repo' compadd $(find "$HOME/Sites" -maxdepth 1 -mindepth 1 -type d -exec basename {} \+)
  _wanted 'repo' expl 'repo' compadd $(find "$HOME/Sites/chef-repos" -maxdepth 1 -mindepth 1 -type d -exec basename {} \+)
  _wanted 'repo' expl 'repo' compadd $(find "$HOME/Sites/chef-cookbooks" -maxdepth 1 -mindepth 1 -type d -exec basename {} \+)
}

repo() {
  local basedir=$HOME/Sites/$1
  if [ -d "$basedir/repo/docroot" ]; then
    cd "$basedir/repo/docroot"
  elif [ -d "$basedir/repo" ]; then
    cd "$basedir/repo"
  elif [ -d "$HOME/Sites/chef-repos/$1" ]; then
    cd "$HOME/Sites/chef-repos/$1"
  elif [ -d "$HOME/Sites/chef-cookbooks/$1" ]; then
    cd "$HOME/Sites/chef-cookbooks/$1"
  elif [ -d "$basedir" ]; then
    cd "$basedir"
  else
    echo "Invalid repo."
    return
  fi
}
