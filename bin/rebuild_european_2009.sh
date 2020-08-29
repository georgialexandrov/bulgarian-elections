#!/bin/bash

# https://ep2009.cik.bg/results/
if [ ! -d ./files/elections/2009_european/csv ]; then
  mkdir -p ./files/elections/2009_european
  if [ ! -f ./files/elections/2009_european/csv.zip ]; then
    curl https://ep2009.cik.bg/exports.zip --output ./files/elections/2009_european/csv.zip
  fi

  unzip ./files/elections/2009_european/csv.zip -d ./files/elections/2009_european/csv
  iconv -f windows-1251 -t utf-8 ./files/elections/2009_european/csv/euro2009_sections.txt > /tmp/euro2009_sections.txt
  mv /tmp/euro2009_sections.txt ./files/elections/2009_european/csv/euro2009_sections.txt
  iconv -f windows-1251 -t utf-8 ./files/elections/2009_european/csv/ReadMe.txt > /tmp/ReadMe.txt
  mv /tmp/ReadMe.txt ./files/elections/2009_european/csv/ReadMe.txt
fi

if [[ ${2} && -f /tmp/${1}.db ]]; then
  cp /tmp/${1}.db ./db/${1}.db
else
  sqlite3 db/${1}.db ".read ./db/elections/2009_european/structure.sql"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2009_european/csv/euro2009_preferences.txt _2009_european_preferences"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2009_european/csv/euro2009_protocols.txt _2009_european_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2009_european/csv/euro2009_sections.txt _2009_european_sections"


  cp db/${1}.db /tmp/${1}.db
fi

sqlite3 db/${1}.db ".read ./db/elections/2009_european/convert.sql"
