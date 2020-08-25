#!/bin/bash

# https://results.cik.bg/pi2017/aktivnost/index.html
# curl https://results.cik.bg/pi2017/export.zip --output ./files/parliament2017.zip
# rm -rf ./files/parliament_2017
# unzip ./files/parliament2017.zip -d ./files/parliament_2017

rm db/parliament_2017.db
cat ./db/elections/2017_parliament/structure.sql | sqlite3 db/parliament_2017.db

sqlite3 db/parliament_2017.db ".read ./db/elections/2017_parliament/voting_locations_2017.sql"

sqlite3 db/parliament_2017.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/cik_parties_26.03.2017.txt _2017_parliament_cik_parties"
sqlite3 db/parliament_2017.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/local_candidates_26.03.2017.txt _2017_parliament_local_candidates"
sqlite3 db/parliament_2017.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/local_parties_26.03.2017.txt _2017_parliament_local_parties"
sqlite3 db/parliament_2017.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/preferences_26.03.2017.txt _2017_parliament_preferences"
sqlite3 db/parliament_2017.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/protocols_26.03.2017.txt _2017_parliament_protocols"
sqlite3 db/parliament_2017.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/sections_26.03.2017.txt _2017_parliament_sections"
sqlite3 db/parliament_2017.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/votes_26.03.2017.txt _2017_parliament_votes"

sqlite3 db/parliament_2017.db ".read ./db/elections/2017/convert.sql"