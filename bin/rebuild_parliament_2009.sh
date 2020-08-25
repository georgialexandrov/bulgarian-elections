#!/bin/bash


# https://pi2009.cik.bg/results/proportional/index.html
# curl https://pi2009.cik.bg/results/exports.zip --output ./files/parliament2009.zip
# rm -rf ./files/parliament_2009
# unzip ./files/parliament2009.zip -d ./files/parliament_2009
# iconv -f windows-1251 -t utf8 ./files/parliament_2009/pe2009_sections.txt  > /tmp/pe2009_sections.txt
# mv /tmp/pe2009_sections.txt ./files/parliament_2009/pe2009_sections.txt
# iconv -f windows-1251 -t utf8 ./files/parliament_2009/ReadMe.txt > /tmp/ReadMe.txt
# mv /tmp/ReadMe.txt ./files/parliament_2009/ReadMe.txt
# iconv -f windows-1251 -t utf8 ./files/parliament_2009/pe2009_sections.txt  > /tmp/pe2009_sections.txt
# mv /tmp/ReadMe.txt ./files/european_2009/ReadMe.txt


rm db/parliament_2009.db
cat ./db/elections/2009_parliament/structure.sql | sqlite3 db/parliament_2009.db

sqlite3 db/parliament_2009.db ".read ./db/elections/2019_regional/voting_locations_2019.sql"

sqlite3 db/parliament_2009.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_majorvotes.txt _2009_parliament_majorvotes"
sqlite3 db/parliament_2009.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_partyvotes.txt _2009_parliament_partyvotes"
sqlite3 db/parliament_2009.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_protocols.txt _2009_parliament_protocols"
sqlite3 db/parliament_2009.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_sections.txt _2009_parliament_sections"

sqlite3 db/parliament_2009.db ".read ./db/elections/2009_parliament/convert.sql"