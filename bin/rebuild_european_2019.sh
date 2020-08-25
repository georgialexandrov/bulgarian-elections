#!/bin/bash

# curl https://results.cik.bg/ep2019/csv.zip --output ./files/european2019.zip
# unzip ./files/european2019.zip -d ./files/european_2019


rm db/european_2019.db
cat ./db/elections/2019_european/structure.sql | sqlite3 db/european_2019.db

sqlite3 db/european_2019.db ".read ./db/elections/2019_european/voting_locations_2019_spring.sql"

sqlite3 db/european_2019.db ".mode csv" ".separator ';'" ".import ./files/european_2019/cik_candidates.txt _2019_european_candidates"
sqlite3 db/european_2019.db ".mode csv" ".separator ';'" ".import ./files/european_2019/cik_parties.txt _2019_european_parties"
sqlite3 db/european_2019.db ".mode csv" ".separator ';'" ".import ./files/european_2019/preferences.txt _2019_european_preferences"
sqlite3 db/european_2019.db ".mode csv" ".separator ';'" ".import ./files/european_2019/preferences_mv.txt _2019_european_preferences_mv"
sqlite3 db/european_2019.db ".mode csv" ".separator ';'" ".import ./files/european_2019/protocols.txt _2019_european_protocols"
sqlite3 db/european_2019.db ".mode csv" ".separator ';'" ".import ./files/european_2019/sections.txt _2019_european_sections"
sqlite3 db/european_2019.db ".mode csv" ".separator ';'" ".import ./files/european_2019/votes.txt _2019_european_votes"
sqlite3 db/european_2019.db ".mode csv" ".separator ';'" ".import ./files/european_2019/votes_mv.txt _2019_european_votes_mv"

sqlite3 db/european_2019.db ".read ./db/elections/2019_european/convert.sql"