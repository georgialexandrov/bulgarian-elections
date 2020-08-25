#!/bin/bash

rm db/locations.db

sqlite3 db/locations.db ".read ./db/location_structure.sql"
sqlite3 db/locations.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/sections_27.10.2019.txt _2019_mayor_1_sections"
sqlite3 db/locations.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/sections_27.10.2019.txt _2019_mayor_municipality_1_sections"
sqlite3 db/locations.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/sections_27.10.2019.txt _2019_mayor_region_1_sections"
sqlite3 db/locations.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/sections_27.10.2019.txt _2019_council_region_1_sections"
sqlite3 db/locations.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/sections_03.11.2019.txt _2019_mayor_2_sections"
sqlite3 db/locations.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/sections_03.11.2019.txt _2019_mayor_municipality_2_sections"
sqlite3 db/locations.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/sections_03.11.2019.txt _2019_mayor_region_2_sections"

sqlite3 db/locations.db ".read ./db/locations.sql"