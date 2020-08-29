#!/bin/bash

# https://results.cik.bg/mipvr2011/tur1/mestni/0103.html
if [ ! -d ./files/elections/2011_president/csv1 ]; then
  mkdir -p ./files/elections/2011_president
  if [ ! -f ./files/elections/2011_president/csv.zip ]; then
    curl https://results.cik.bg/mipvr2011/el2011_t1.zip --output ./files/elections/2011_president/csv1.zip
    curl https://results.cik.bg/mipvr2011/el2011_t2.zip --output ./files/elections/2011_president/csv2.zip
  fi

  # For MacOS use The Unarchiver and select Cyrilic(MacOS)
  unzip ./files/elections/2011_president/csv1.zip -d ./files/elections/2011_president/csv1
  unzip ./files/elections/2011_president/csv2.zip -d ./files/elections/2011_president/csv2

  iconv -f windows-1251 -t utf8 './files/elections/2011_president/csv1/президент/el2011_president_candidates.txt' > /tmp/el2011_president_candidates.txt && mv /tmp/el2011_president_candidates.txt './files/elections/2011_president/csv1/президент/el2011_president_candidates.txt'
  iconv -f windows-1251 -t utf8 './files/elections/2011_president/csv1/президент/el2011_president_readme.txt' > /tmp/el2011_president_readme.txt && mv /tmp/el2011_president_readme.txt './files/elections/2011_president/csv1/президент/el2011_president_readme.txt'
  iconv -f windows-1251 -t utf8 './files/elections/2011_president/csv1/президент/el2011_president_protocols.txt' > /tmp/el2011_president_protocols.txt && mv /tmp/el2011_president_protocols.txt './files/elections/2011_president/csv1/президент/el2011_president_protocols.txt'
  iconv -f windows-1251 -t utf8 './files/elections/2011_president/csv1/президент/el2011_president_sections.txt' > /tmp/el2011_president_sections.txt && mv /tmp/el2011_president_sections.txt './files/elections/2011_president/csv1/президент/el2011_president_sections.txt'

  iconv -f windows-1251 -t utf8 './files/elections/2011_president/csv2/президент/el2011_president_candidates.txt' > /tmp/el2011_president_candidates.txt && mv /tmp/el2011_president_candidates.txt './files/elections/2011_president/csv2/президент/el2011_president_candidates.txt'
  iconv -f windows-1251 -t utf8 './files/elections/2011_president/csv2/президент/el2011_president_readme.txt' > /tmp/el2011_president_readme.txt && mv /tmp/el2011_president_readme.txt './files/elections/2011_president/csv2/президент/el2011_president_readme.txt'
  iconv -f windows-1251 -t utf8 './files/elections/2011_president/csv2/президент/el2011_president_protocols.txt' > /tmp/el2011_president_protocols.txt && mv /tmp/el2011_president_protocols.txt './files/elections/2011_president/csv2/президент/el2011_president_protocols.txt'
  iconv -f windows-1251 -t utf8 './files/elections/2011_president/csv2/президент/el2011_president_sections.txt' > /tmp/el2011_president_sections.txt && mv /tmp/el2011_president_sections.txt './files/elections/2011_president/csv2/президент/el2011_president_sections.txt'

fi

if [ -f false ]; then
  cp /tmp/${1}.db ./db/${1}.db
else
  sqlite3 db/${1}.db ".read ./db/elections/2011_president/structure.sql"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2011_president/csv1/президент/el2011_president_candidates.txt _2011_president_1_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2011_president/csv1/президент/el2011_president_protocols.txt _2011_president_1_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2011_president/csv1/президент/el2011_president_sections.txt _2011_president_1_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2011_president/csv1/президент/el2011_president_votes.txt _2011_president_1_votes"

  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2011_president/csv2/президент/el2011_president_candidates.txt _2011_president_2_candidates"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2011_president/csv2/президент/el2011_president_protocols.txt _2011_president_2_protocols"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2011_president/csv2/президент/el2011_president_sections.txt _2011_president_2_sections"
  sqlite3 db/${1}.db ".mode csv" ".separator ';'" ".import ./files/elections/2011_president/csv2/президент/el2011_president_votes.txt _2011_president_2_votes"
fi

sqlite3 db/${1}.db ".read ./db/elections/2011_president/convert.sql"