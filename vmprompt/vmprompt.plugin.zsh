vbox_prompt() {
  /usr/bin/VBoxManage list runningvms | egrep -o '^"[^"]+"' 2>/dev/null | sed -e 's|"||g' | while read vms; do
    echo -n '•'
  done
}

parallels_prompt() {
  /usr/bin/prlctl list --no-header -o name 2>/dev/null | while read vms; do
    echo -n '•'
  done
}
