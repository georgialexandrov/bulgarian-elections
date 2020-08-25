#!/bin/bash

# https://ep2009.cik.bg/results/
# curl https://ep2009.cik.bg/exports.zip --output ./files/european2009.zip

# unzip ./files/european2009.zip -d ./files/european_2009
# iconv -f windows-1251 -t utf-8 ./files/european_2009/euro2009_sections.txt > /tmp/euro2009_sections.txt
# mv /tmp/euro2009_sections.txt ./files/european_2009/euro2009_sections.txt
# iconv -f windows-1251 -t utf-8 ./files/european_2009/ReadMe.txt > /tmp/ReadMe.txt
# mv /tmp/ReadMe.txt ./files/european_2009/ReadMe.txt

rm db/european_2009.db
cat ./db/elections/2009_european/structure.sql | sqlite3 db/european_2009.db

sqlite3 db/european_2009.db ".read ./db/elections/2019_regional/voting_locations_2019.sql"

sqlite3 db/european_2009.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_preferences.txt _2009_european_preferences"
sqlite3 db/european_2009.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_protocols.txt _2009_european_protocols"
sqlite3 db/european_2009.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_sections.txt _2009_european_sections"

sqlite3 db/european_2009.db ".read ./db/elections/2009_european/convert.sql"