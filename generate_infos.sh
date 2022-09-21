mkdir -p info; 

for n in $(lv2ls); do 
  filename="info/$(echo $(echo $n | sha256sum) | cut -d ' '  -f 1).html"
  echo '<html><head></head><body><pre>' > $filename
  lv2info "$n" >> $filename
  echo '</pre></body></html>' >> $filename
done
