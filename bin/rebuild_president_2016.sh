#!/bin/bash

# https://results.cik.bg/pvrnr2016/tur1/president/
if [ ! -d ./files/elections/2016_president/csv ]; then
  mkdir -p ./files/elections/2016_president
  if [ ! -f ./files/elections/2016_president/csv.zip ]; then
    curl https://results.cik.bg/pvrnr2016/tur1/export.zip --output ./files/elections/2016_president/csv.zip
  fi

  unzip ./files/elections/2016_president/csv.zip -d ./files/elections/2016_president/csv
fi

if [[ ${2} && -f /tmp/${1}.db ]]; then
  cp /tmp/${1}.db ./db/${1}.db
else
  sqlite3 db/${1}.db ".read ./db/elections/2016_president/structure.sql"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2016_president/csv/06.11.2016/cik_candidates_06.11.2016.txt _2016_president_1_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2016_president/csv/06.11.2016/protocols_06.11.2016.txt _2016_president_1_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2016_president/csv/06.11.2016/sections_06.11.2016.txt _2016_president_1_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2016_president/csv/06.11.2016/votes_06.11.2016.txt _2016_president_1_votes"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2016_president/csv/13.11.2016/cik_candidates_13.11.2016.txt _2016_president_2_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2016_president/csv/13.11.2016/protocols_13.11.2016.txt _2016_president_2_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2016_president/csv/13.11.2016/sections_13.11.2016.txt _2016_president_2_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2016_president/csv/13.11.2016/votes_13.11.2016.txt _2016_president_2_votes"
fi

sqlite3 db/${1}.db ".read ./db/elections/2016_president/convert.sql"