#!/bin/bash

# https://results.cik.bg/pi2013/rezultati/index.html
if [ ! -d ./files/elections/2013_parliament/csv ]; then
  mkdir -p ./files/elections/2013_parliament
  if [ ! -f ./files/elections/2013_parliament/csv.zip ]; then
    curl https://results.cik.bg/pi2013/export.zip --output ./files/elections/2013_parliament/csv.zip
  fi

  unzip ./files/elections/2013_parliament/csv.zip -d ./files/elections/2013_parliament/csv
fi

if [[ ${2} && -f /tmp/${1}.db ]]; then
  cp /tmp/${1}.db ./db/${1}.db
else
  sqlite3 db/${1}.db ".read ./db/elections/2013_parliament/structure.sql"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2013_parliament/csv/export/pe2013_pe_candidates.txt _2013_parliament_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2013_parliament/csv/export/pe2013_pe_cikparties.txt _2013_parliament_parties"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2013_parliament/csv/export/pe2013_pe_protocols.txt _2013_parliament_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2013_parliament/csv/export/pe2013_pe_sections.txt _2013_parliament_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2013_parliament/csv/export/pe2013_pe_votes.txt _2013_parliament_votes"

  cp db/${1}.db /tmp/${1}.db
fi

sqlite3 db/${1}.db ".read ./db/elections/2013_parliament/convert.sql"
