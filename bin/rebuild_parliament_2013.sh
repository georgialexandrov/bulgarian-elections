#!/bin/bash

rm db/parliament_2013.db
cat ./db/elections/2013_parliament/structure.sql | sqlite3 db/parliament_2013.db

sqlite3 db/parliament_2013.db ".read ./db/elections/2019_regional/voting_locations_2017.sql"

sqlite3 db/parliament_2013.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_candidates.txt _2013_parliament_candidates"
sqlite3 db/parliament_2013.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_cikparties.txt _2013_parliament_parties"
sqlite3 db/parliament_2013.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_protocols.txt _2013_parliament_protocols"
sqlite3 db/parliament_2013.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_sections.txt _2013_parliament_sections"
sqlite3 db/parliament_2013.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_votes.txt _2013_parliament_votes"

sqlite3 db/parliament_2013.db ".read ./db/elections/2013_parliament/convert.sql"