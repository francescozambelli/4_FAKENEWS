# !/bin/bash
FILES="/home/noemi/pdf_json/*.json"
i=0
for f in $FILES
do
(( ++i < 1001)) &&
  echo "Processing $i file..." &&
  jq -c . "${f}" > "${f/.json/g.json}" &&
  mv "${f/.json/g.json}" /home/noemi/1001g/
done
