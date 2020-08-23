#!/bin/bash

rm db/president_2011.db
cat ./db/elections/2011_regional/structure.sql | sqlite3 db/president_2011.db

sqlite3 db/president_2011.db ".read ./db/elections/2019_regional/voting_locations_2019.sql"


sqlite3 db/presidenr_2011.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_candidates.txt _2011_president_1_candidates"
sqlite3 db/presidenr_2011.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_protocols.txt _2011_president_1_protocols"
sqlite3 db/presidenr_2011.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_sections.txt _2011_president_1_sections"
sqlite3 db/presidenr_2011.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_votes.txt _2011_president_1_votes"

sqlite3 db/presidenr_2011.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_candidates.txt _2011_president_2_candidates"
sqlite3 db/presidenr_2011.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_protocols.txt _2011_president_2_protocols"
sqlite3 db/presidenr_2011.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_sections.txt _2011_president_2_sections"
sqlite3 db/presidenr_2011.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_votes.txt _2011_president_2_votes"

sqlite3 db/president_2011.db ".read ./db/elections/2011_regional/convert.sql"