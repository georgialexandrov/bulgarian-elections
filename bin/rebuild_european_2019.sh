#!/bin/bash

if [ ! -d ./files/elections/2019_european/csv ]; then
  mkdir -p ./files/elections/2019_european
  if [ ! -f ./files/elections/2019_european/csv.zip ]; then
    curl https://results.cik.bg/ep2019/csv.zip --output ./files/elections/2019_european/csv.zip
  fi

  unzip ./files/elections/2019_european/csv.zip -d ./files/elections/2019_european/csv
fi

if [[ ${2} && -f /tmp/${1}.db ]]; then
  cp /tmp/${1}.db ./db/${1}.db
else
  sqlite3 db/${1}.db ".read ./db/elections/2019_european/structure.sql"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_european/csv/cik_candidates.txt _2019_european_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_european/csv/cik_parties.txt _2019_european_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_european/csv/preferences.txt _2019_european_preferences"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_european/csv/preferences_mv.txt _2019_european_preferences_mv"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_european/csv/protocols.txt _2019_european_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_european/csv/sections.txt _2019_european_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_european/csv/votes.txt _2019_european_votes"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_european/csv/votes_mv.txt _2019_european_votes_mv"

  cp db/${1}.db /tmp/${1}.db
fi

sqlite3 db/${1}.db ".read ./db/elections/2019_european/convert.sql"
