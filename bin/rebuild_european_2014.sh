#!/bin/bash

# https://results.cik.bg/ep2014/rezultati/index.html
# curl https://results.cik.bg/ep2014/export.zip --output ./files/european2014.zip
# unzip ./files/european2014.zip -d ./files/european_2014

rm db/european_2014.db
cat ./db/elections/european_2014/structure.sql | sqlite3 db/european_2014.db

sqlite3 db/european_2014.db ".read ./db/2019_regional/voting_locations_2019.sql"

sqlite3 db/european_2014.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/candidates_eu2014.txt _2014_european_candidates"
sqlite3 db/european_2014.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/parties_eu2014.txt _2014_european_parties"
sqlite3 db/european_2014.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/preferences_eu2014.txt _2014_european_preferences"
sqlite3 db/european_2014.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/protocols_eu2014.txt _2014_european_protocols"
sqlite3 db/european_2014.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/sections_eu2014.txt _2014_european_sections"
sqlite3 db/european_2014.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/votes_eu2014.txt _2014_european_votes"

sqlite3 db/european_2014.db ".read ./db/elections/european_2014/convert.sql"