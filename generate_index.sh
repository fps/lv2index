echo '<html><head></head><body>' > index.html; 
for n in $(lv2ls); do 
  filename=$(echo info/$(echo $(echo $n | sha256sum) | cut -d ' ' -f 1).html); 
  name=$(cat $filename | head -n4 | tail -n 1 | tr -s ' ' | cut -d ' ' -f 2-)
  uri=$(head -n2 $filename | tail -n1)
  echo "index entry for $filename $name $uri"
  echo "<p><a href=\"$filename\">$name ($uri)</a></p>" >> index.html;  
done; 
echo '</body></html>' >> index.html
