#!/bin/bash

function csv2insert { perl -plE 's,\cM,,;s,\x27,$&$&,g;$_="insert into quake values (".s/"(.*?)"/push@a,$1;"§§$#a"/egr=~s,(^|$),\x27,gr=~s/,/\x27,\x27/gr=~s/§§(\d+)/$a[$1]/gr.");"'; }

c=cat
if hash pv; then
  c=pv
fi

if [ ! -f earthquake.csv ]; then 
    wget -N https://raw.githubusercontent.com/socratica/data/master/earthquake.csv
fi

cat earthquake.csv | tail -n+2 | csv2insert            > earthquake-insert.sql
perl -i -ple '$.-1or$_="BEGIN;\n$_";$_.="\nEND;" if eof' earthquake-insert.sql


cat earthquake-create.sql | sqlite3 earthquake.sqlite
$c  earthquake-insert.sql | sqlite3 earthquake.sqlite
ls -l earthquake.sqlite

echo "select 'earthquakes', sum(1) from quake;" | sqlite3 earthquake.sqlite
