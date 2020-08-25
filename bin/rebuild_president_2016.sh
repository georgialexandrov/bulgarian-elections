#!/bin/bash

# https://results.cik.bg/pvrnr2016/tur1/president/
# curl https://results.cik.bg/pvrnr2016/tur1/export.zip --output ./files/president2016.zip
# unzip ./files/president2016.zip -d ./files/president_2016

rm db/president_2016.db
cat ./db/elections/2016_president/structure.sql | sqlite3 db/president_2016.db

sqlite3 db/president_2016.db ".read ./db/elections/2016_president/voting_locations_2016.sql"

sqlite3 db/president_2016.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/cik_candidates_06.11.2016.txt _2016_president_1_candidates"
sqlite3 db/president_2016.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/protocols_06.11.2016.txt _2016_president_1_protocols"
sqlite3 db/president_2016.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/sections_06.11.2016.txt _2016_president_1_sections"
sqlite3 db/president_2016.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/votes_06.11.2016.txt _2016_president_1_votes"

sqlite3 db/president_2016.db ".read ./db/elections/2016_president/convert.sql"