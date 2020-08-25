#!/bin/bash

# https://www.cik.bg/bg/mi2019
# curl https://results.cik.bg/mi2019/csv.zip --output ./files/elections/2019_regional/csv.zip
# unzip ./files/elections/2019_regional/csv.zip -d ./files/elections/2019_regional/csv
# curl https://www.cik.bg/upload/112038/Sekcii-08.09.2019-KM-0.xlsx --output ./files/section_addresses_2019_fall.xlsx

# rm db/regional_2019.db
# cat ./db/elections/2019_regional/structure.sql | sqlite3 db/regional_2019.db

# sqlite3 db/regional_2019.db ".read ./db/elections/2019_regional/voting_locations_2019.sql"

# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КК/cik_parties_27.10.2019.txt _2019_mayor_1_cik_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КК/local_candidates_27.10.2019.txt _2019_mayor_1_local_candidates"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КК/local_parties_27.10.2019.txt _2019_mayor_1_local_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КК/protocols_27.10.2019.txt _2019_mayor_1_protocols"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КК/sections_27.10.2019.txt _2019_mayor_1_sections"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КК/votes_27.10.2019.txt _2019_mayor_1_votes"

# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КО/cik_parties_27.10.2019.txt _2019_mayor_municipality_1_cik_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КО/local_candidates_27.10.2019.txt _2019_mayor_municipality_1_local_candidates"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КО/local_parties_27.10.2019.txt _2019_mayor_municipality_1_local_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КО/protocols_27.10.2019.txt _2019_mayor_municipality_1_protocols"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КО/sections_27.10.2019.txt _2019_mayor_municipality_1_sections"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КО/votes_27.10.2019.txt _2019_mayor_municipality_1_votes"

# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КР/cik_parties_27.10.2019.txt _2019_mayor_region_1_cik_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КР/local_candidates_27.10.2019.txt _2019_mayor_region_1_local_candidates"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КР/local_parties_27.10.2019.txt _2019_mayor_region_1_local_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КР/protocols_27.10.2019.txt _2019_mayor_region_1_protocols"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КР/sections_27.10.2019.txt _2019_mayor_region_1_sections"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/КР/votes_27.10.2019.txt _2019_mayor_region_1_votes"

# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/ОС/cik_parties_27.10.2019.txt _2019_council_region_1_cik_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/ОС/local_candidates_27.10.2019.txt _2019_council_region_1_local_candidates"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/ОС/local_parties_27.10.2019.txt _2019_council_region_1_local_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/ОС/preferences_27.10.2019.txt _2019_council_region_1_preferences"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/ОС/protocols_27.10.2019.txt _2019_council_region_1_protocols"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/ОС/sections_27.10.2019.txt _2019_council_region_1_sections"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР1/ОС/votes_27.10.2019.txt _2019_council_region_1_votes"

      
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КК/cik_parties_03.11.2019.txt _2019_mayor_2_cik_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КК/local_candidates_03.11.2019.txt _2019_mayor_2_local_candidates"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КК/local_parties_03.11.2019.txt _2019_mayor_2_local_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КК/protocols_03.11.2019.txt _2019_mayor_2_protocols"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КК/sections_03.11.2019.txt _2019_mayor_2_sections"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КК/votes_03.11.2019.txt _2019_mayor_2_votes"

# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КО/cik_parties_03.11.2019.txt _2019_mayor_municipality_2_cik_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КО/local_candidates_03.11.2019.txt _2019_mayor_municipality_2_local_candidates"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КО/local_parties_03.11.2019.txt _2019_mayor_municipality_2_local_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КО/protocols_03.11.2019.txt _2019_mayor_municipality_2_protocols"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КО/sections_03.11.2019.txt _2019_mayor_municipality_2_sections"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КО/votes_03.11.2019.txt _2019_mayor_municipality_2_votes"

# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КР/cik_parties_03.11.2019.txt _2019_mayor_region_2_cik_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КР/local_candidates_03.11.2019.txt _2019_mayor_region_2_local_candidates"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КР/local_parties_03.11.2019.txt _2019_mayor_region_2_local_parties"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КР/protocols_03.11.2019.txt _2019_mayor_region_2_protocols"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КР/sections_03.11.2019.txt _2019_mayor_region_2_sections"
# sqlite3 db/regional_2019.db ".mode csv" ".separator ';'" ".import ./files/elections/2019_regional/csv/ТУР2/КР/votes_03.11.2019.txt _2019_mayor_region_2_votes"

cp db/regional_2019.bak.db db/regional_2019.db
sqlite3 db/regional_2019.db ".read ./db/elections/2019_regional/convert.sql"