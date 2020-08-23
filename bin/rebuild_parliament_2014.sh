#!/bin/bash

rm db/parliament_2014.db
cat ./db/elections/2014_parliament/structure.sql | sqlite3 db/parliament_2014.db

sqlite3 db/parliament_2014.db ".read ./db/elections/2019_regional/voting_locations_2019_spring.sql"

sqlite3 db/parliament_2014.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/candidates_pe2014.txt _2014_parliament_candidates"
sqlite3 db/parliament_2014.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/ind_pe2014.txt _2014_parliament_ind"
sqlite3 db/parliament_2014.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/parties_pe2014.txt _2014_parliament_parties"
sqlite3 db/parliament_2014.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/preferences_pe2014.txt _2014_parliament_preferences"
sqlite3 db/parliament_2014.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/protocols_pe2014.txt _2014_parliament_protocols"
sqlite3 db/parliament_2014.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/sections_pe2014.txt _2014_parliament_sections"
sqlite3 db/parliament_2014.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/votes_pe2014.txt _2014_parliament_votes"

sqlite3 db/parliament_2014.db ".read ./db/elections/2014_parliament/convert.sql"