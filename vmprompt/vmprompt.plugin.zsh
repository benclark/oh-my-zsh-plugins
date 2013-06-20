get_runningvms() {
  /usr/bin/VBoxManage list runningvms | egrep -o '^"[^"]+"' 2>/dev/null | sed -e 's|"||g' | while read vms; do
    echo -n '•'
  done
}
