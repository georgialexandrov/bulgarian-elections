#!/bin/bash

# https://pi2009.cik.bg/results/proportional/index.html
if [ ! -d ./files/elections/2009_parliament/csv ]; then
  mkdir -p ./files/elections/2009_parliament
  if [ ! -f ./files/elections/2009_parliament/csv.zip ]; then
    curl https://pi2009.cik.bg/results/exports.zip --output ./files/elections/2009_parliament/csv.zip
  fi

  unzip ./files/elections/2009_parliament/csv.zip -d ./files/elections/2009_parliament/csv

  iconv -f windows-1251 -t utf8 ./files/elections/2009_parliament/csv/pe2009_sections.txt  > /tmp/pe2009_sections.txt
  mv /tmp/pe2009_sections.txt ./files/elections/2009_parliament/csv/pe2009_sections.txt
  iconv -f windows-1251 -t utf8 ./files/elections/2009_parliament/csv/ReadMe.txt > /tmp/ReadMe.txt
  mv /tmp/ReadMe.txt ./files/elections/2009_parliament/csv/ReadMe.txt
  iconv -f windows-1251 -t utf8 ./files/elections/2009_parliament/csv/pe2009_sections.txt  > /tmp/pe2009_sections.txt
  mv /tmp/ReadMe.txt ./files/elections/2009_parliament/csv/ReadMe.txt
fi

if [[ ${2} && -f /tmp/${1}.db ]]; then
  cp /tmp/${1}.db ./db/${1}.db
else
  sqlite3 db/${1}.db ".read ./db/elections/2009_parliament/structure.sql"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2009_parliament/csv/pe2009_majorvotes.txt _2009_parliament_majorvotes"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2009_parliament/csv/pe2009_partyvotes.txt _2009_parliament_partyvotes"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2009_parliament/csv/pe2009_protocols.txt _2009_parliament_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2009_parliament/csv/pe2009_sections.txt _2009_parliament_sections"

  cp db/${1}.db /tmp/${1}.db
fi

sqlite3 db/${1}.db ".read ./db/elections/2009_parliament/convert.sql"
