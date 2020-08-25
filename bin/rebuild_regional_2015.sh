#!/bin/bash

# https://results.cik.bg/minr2015/tur1/mestni/0101.html
# curl https://results.cik.bg/minr2015/tur1/mi2015.zip --output ./files/mayor2015_1.zip
# curl https://results.cik.bg/minr2015/tur2/mi2015.zip --output ./files/mayor2015_2.zip

rm db/regional_2015.db
cat ./db/2015_regional/structure.sql | sqlite3 db/regional_2015.db

sqlite3 db/regional_2015.db ".read ./db/2015_regional/voting_locations_2015.sql"

sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/cik_parties_25.10.2015.txt _2015_mayor_1_cik_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/local_candidates_25.10.2015.txt _2015_mayor_1_local_candidates"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/local_parties_25.10.2015.txt _2015_mayor_1_local_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/protocols_25.10.2015.txt _2015_mayor_1_cik_protocols"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/sections_25.10.2015.txt _2015_mayor_1_sections"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/votes_25.10.2015.txt _2015_mayor_1_votes"

sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/cik_parties_25.10.2015.txt _2015_mayor_municipality_1_cik_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/local_candidates_25.10.2015.txt _2015_mayor_municipality_1_local_candidates"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/local_parties_25.10.2015.txt _2015_mayor_municipality_1_local_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/protocols_25.10.2015.txt _2015_mayor_municipality_1_cik_protocols"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/sections_25.10.2015.txt _2015_mayor_municipality_1_sections"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/votes_25.10.2015.txt _2015_mayor_municipality_1_votes"

sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/cik_parties_25.10.2015.txt _2015_mayor_region_1_cik_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/local_candidates_25.10.2015.txt _2015_mayor_region_1_local_candidates"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/local_parties_25.10.2015.txt _2015_mayor_region_1_local_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/protocols_25.10.2015.txt _2015_mayor_region_1_cik_protocols"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/sections_25.10.2015.txt _2015_mayor_region_1_sections"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/votes_25.10.2015.txt _2015_mayor_region_1_votes"

sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/cik_parties_25.10.2015.txt _2015_council_region_1_cik_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/local_candidates_25.10.2015.txt _2015_council_region_1_local_candidates"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/local_parties_25.10.2015.txt _2015_council_region_1_local_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/protocols_25.10.2015.txt _2015_council_region_1_cik_protocols"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/sections_25.10.2015.txt _2015_council_region_1_sections"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/votes_25.10.2015.txt _2015_council_region_1_votes"

sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/cik_parties_01.11.2015.txt _2015_mayor_2_cik_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/local_candidates_01.11.2015.txt _2015_mayor_2_local_candidates"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/local_parties_01.11.2015.txt _2015_mayor_2_local_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/protocols_01.11.2015.txt _2015_mayor_2_cik_protocols"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/sections_01.11.2015.txt _2015_mayor_2_sections"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/votes_01.11.2015.txt _2015_mayor_2_votes"

sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/cik_parties_01.11.2015.txt _2015_mayor_municipality_2_cik_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/local_candidates_01.11.2015.txt _2015_mayor_municipality_2_local_candidates"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/local_parties_01.11.2015.txt _2015_mayor_municipality_2_local_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/protocols_01.11.2015.txt _2015_mayor_municipality_2_cik_protocols"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/sections_01.11.2015.txt _2015_mayor_municipality_2_sections"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/votes_01.11.2015.txt _2015_mayor_municipality_2_votes"

sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/cik_parties_01.11.2015.txt _2015_mayor_region_2_cik_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/local_candidates_01.11.2015.txt _2015_mayor_region_2_local_candidates"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/local_parties_01.11.2015.txt _2015_mayor_region_2_local_parties"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/protocols_01.11.2015.txt _2015_mayor_region_2_cik_protocols"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/sections_01.11.2015.txt _2015_mayor_region_2_sections"
sqlite3 db/regional_2015.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/votes_01.11.2015.txt _2015_mayor_region_2_votes"

sqlite3 db/regional_2015.db ".read ./db/2015_regional/convert.sql"