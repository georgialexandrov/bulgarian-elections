#!/bin/bash

# https://results.cik.bg/ep2014/rezultati/index.html
if [ ! -d ./files/elections/2014_european/csv ]; then
  mkdir -p ./files/elections/2014_european
  if [ ! -f ./files/elections/2014_european/csv.zip ]; then
    curl https://results.cik.bg/ep2014/export.zip --output ./files/elections/2014_european/csv.zip
  fi

  unzip ./files/elections/2014_european/csv.zip -d ./files/elections/2014_european/csv
fi

if [[ ${2} && -f /tmp/${1}.db ]]; then
  cp /tmp/${1}.db ./db/${1}.db
else
  sqlite3 db/${1}.db ".read ./db/elections/2014_european/structure.sql"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_european/csv/export/candidates_eu2014.txt _2014_european_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_european/csv/export/parties_eu2014.txt _2014_european_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_european/csv/export/preferences_eu2014.txt _2014_european_preferences"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_european/csv/export/protocols_eu2014.txt _2014_european_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_european/csv/export/sections_eu2014.txt _2014_european_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_european/csv/export/votes_eu2014.txt _2014_european_votes"

  cp db/${1}.db /tmp/${1}.db
fi

sqlite3 db/${1}.db ".read ./db/elections/2014_european/convert.sql"
