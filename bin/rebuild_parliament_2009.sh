#!/bin/bash

rm db/parliament_2009.db
cat ./db/elections/2009_parliament/structure.sql | sqlite3 db/parliament_2009.db

sqlite3 db/parliament_2009.db ".read ./db/elections/2019_regional/voting_locations_2019.sql"

sqlite3 db/parliament_2009.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_majorvotes.txt _2009_parliament_majorvotes"
sqlite3 db/parliament_2009.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_partyvotes.txt _2009_parliament_partyvotes"
sqlite3 db/parliament_2009.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_protocols.txt _2009_parliament_protocols"
sqlite3 db/parliament_2009.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_sections.txt _2009_parliament_sections"

sqlite3 db/parliament_2009.db ".read ./db/elections/2009_parliament/convert.sql"