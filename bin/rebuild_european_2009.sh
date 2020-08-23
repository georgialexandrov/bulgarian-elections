#!/bin/bash

rm db/european_2009.db
cat ./db/elections/2009_european/structure.sql | sqlite3 db/european_2009.db

sqlite3 db/european_2009.db ".read ./db/elections/2019_regional/voting_locations_2019.sql"

sqlite3 db/european_2009.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_preferences.txt _2009_european_preferences"
sqlite3 db/european_2009.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_protocols.txt _2009_european_protocols"
sqlite3 db/european_2009.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_sections.txt _2009_european_sections"

sqlite3 db/european_2009.db ".read ./db/elections/2009_european/convert.sql"