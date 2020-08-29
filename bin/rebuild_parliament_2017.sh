#!/bin/bash

# https://results.cik.bg/pi2017/aktivnost/index.html
if [ ! -d ./files/elections/2017_parliament/csv ]; then
  mkdir -p ./files/elections/2017_parliament
  if [ ! -f ./files/elections/2017_parliament/csv.zip ]; then
    curl https://results.cik.bg/pi2017/export.zip --output ./files/elections/2017_parliament/csv.zip
  fi

  unzip ./files/elections/2017_parliament/csv.zip -d ./files/elections/2017_parliament/csv
fi

if [[ ${2} && -f /tmp/${1}.db ]]; then
  cp /tmp/${1}.db ./db/${1}.db
else
  sqlite3 db/${1}.db ".read ./db/elections/2017_parliament/structure.sql"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2017_parliament/csv/cik_parties_26.03.2017.txt _2017_parliament_cik_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2017_parliament/csv/local_candidates_26.03.2017.txt _2017_parliament_local_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2017_parliament/csv/local_parties_26.03.2017.txt _2017_parliament_local_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2017_parliament/csv/preferences_26.03.2017.txt _2017_parliament_preferences"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2017_parliament/csv/protocols_26.03.2017.txt _2017_parliament_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2017_parliament/csv/sections_26.03.2017.txt _2017_parliament_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2017_parliament/csv/votes_26.03.2017.txt _2017_parliament_votes"

fi

sqlite3 db/${1}.db ".read ./db/elections/2017_parliament/convert.sql"
