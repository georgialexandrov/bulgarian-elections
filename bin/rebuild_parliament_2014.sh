#!/bin/bash

# https://results.cik.bg/pi2014/rezultati/index.html
if [ ! -d ./files/elections/2014_parliament/csv ]; then
  mkdir -p ./files/elections/2014_parliament
  if [ ! -f ./files/elections/2014_parliament/csv.zip ]; then
    curl https://results.cik.bg/pi2014/csv.zip --output ./files/elections/2014_parliament/csv.zip
  fi

  unzip ./files/elections/2014_parliament/csv.zip -d ./files/elections/2014_parliament/csv
fi

if [[ ${2} && -f /tmp/${1}.db ]]; then
  cp /tmp/${1}.db ./db/${1}.db
else
  sqlite3 db/${1}.db ".read ./db/elections/2014_parliament/structure.sql"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_parliament/csv/candidates_pe2014.txt _2014_parliament_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_parliament/csv/ind_pe2014.txt _2014_parliament_ind"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_parliament/csv/parties_pe2014.txt _2014_parliament_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_parliament/csv/preferences_pe2014.txt _2014_parliament_preferences"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_parliament/csv/protocols_pe2014.txt _2014_parliament_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_parliament/csv/sections_pe2014.txt _2014_parliament_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2014_parliament/csv/votes_pe2014.txt _2014_parliament_votes"
fi

sqlite3 db/${1}.db ".read ./db/elections/2014_parliament/convert.sql"
