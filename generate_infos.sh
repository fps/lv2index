mkdir -p info; for n in $(lv2ls); do lv2info "$n" > info/$(echo $(echo $n | sha256sum) | cut -d ' '  -f 1).lv2info; done
