#!/bin/bash


# https://results.cik.bg/mipvr2011/tur1/mestni/0103.html
# curl https://results.cik.bg/mipvr2011/el2011_t1.zip --output ./files/mayor2011_1.zip
# curl https://results.cik.bg/mipvr2011/el2011_t2.zip --output ./files/mayor2011_2.zip

# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_candidates.txt > /tmp/el2011_mayor_mrlty_candidates.txt && mv /tmp/el2011_mayor_mrlty_candidates.txt ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_candidates.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_cikparties.txt > /tmp/el2011_mayor_mrlty_cikparties.txt && mv /tmp/el2011_mayor_mrlty_cikparties.txt ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_cikparties.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_coalitions.txt > /tmp/el2011_mayor_mrlty_coalitions.txt && mv /tmp/el2011_mayor_mrlty_coalitions.txt ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_coalitions.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_protocols.txt > /tmp/el2011_mayor_mrlty_protocols.txt && mv /tmp/el2011_mayor_mrlty_protocols.txt ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_protocols.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_sections.txt > /tmp/el2011_mayor_mrlty_sections.txt && mv /tmp/el2011_mayor_mrlty_sections.txt ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_sections.txt

# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_candidates.txt > /tmp/el2011_mayor_munic_candidates.txt && mv /tmp/el2011_mayor_munic_candidates.txt ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_candidates.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_cikparties.txt > /tmp/el2011_mayor_munic_cikparties.txt && mv /tmp/el2011_mayor_munic_cikparties.txt ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_cikparties.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_coalitions.txt > /tmp/el2011_mayor_munic_coalitions.txt && mv /tmp/el2011_mayor_munic_coalitions.txt ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_coalitions.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_protocols.txt > /tmp/el2011_mayor_munic_protocols.txt && mv /tmp/el2011_mayor_munic_protocols.txt ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_protocols.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_sections.txt > /tmp/el2011_mayor_munic_sections.txt && mv /tmp/el2011_mayor_munic_sections.txt ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_sections.txt

# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/общински\ съветници/el2011_council_candidates.txt > /tmp/el2011_council_candidates.txt && mv /tmp/el2011_council_candidates.txt ./files/mayor_2011_1/общински\ съветници/el2011_council_candidates.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/общински\ съветници/el2011_council_cikparties.txt > /tmp/el2011_council_cikparties.txt && mv /tmp/el2011_council_cikparties.txt ./files/mayor_2011_1/общински\ съветници/el2011_council_cikparties.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/общински\ съветници/el2011_council_coalitions.txt > /tmp/el2011_council_coalitions.txt && mv /tmp/el2011_council_coalitions.txt ./files/mayor_2011_1/общински\ съветници/el2011_council_coalitions.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/общински\ съветници/el2011_council_protocols.txt > /tmp/el2011_council_protocols.txt && mv /tmp/el2011_council_protocols.txt ./files/mayor_2011_1/общински\ съветници/el2011_council_protocols.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/общински\ съветници/el2011_council_sections.txt > /tmp/el2011_council_sections.txt && mv /tmp/el2011_council_sections.txt ./files/mayor_2011_1/общински\ съветници/el2011_council_sections.txt

# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_candidates.txt > /tmp/el2011_mayor_mrlty_candidates.txt && mv /tmp/el2011_mayor_mrlty_candidates.txt ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_candidates.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_cikparties.txt > /tmp/el2011_mayor_mrlty_cikparties.txt && mv /tmp/el2011_mayor_mrlty_cikparties.txt ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_cikparties.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_coalitions.txt > /tmp/el2011_mayor_mrlty_coalitions.txt && mv /tmp/el2011_mayor_mrlty_coalitions.txt ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_coalitions.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_protocols.txt > /tmp/el2011_mayor_mrlty_protocols.txt && mv /tmp/el2011_mayor_mrlty_protocols.txt ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_protocols.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_sections.txt > /tmp/el2011_mayor_mrlty_sections.txt && mv /tmp/el2011_mayor_mrlty_sections.txt ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_sections.txt

# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_candidates.txt > /tmp/el2011_mayor_munic_candidates.txt && mv /tmp/el2011_mayor_munic_candidates.txt ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_candidates.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_cikparties.txt > /tmp/el2011_mayor_munic_cikparties.txt && mv /tmp/el2011_mayor_munic_cikparties.txt ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_cikparties.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_coalitions.txt > /tmp/el2011_mayor_munic_coalitions.txt && mv /tmp/el2011_mayor_munic_coalitions.txt ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_coalitions.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_protocols.txt > /tmp/el2011_mayor_munic_protocols.txt && mv /tmp/el2011_mayor_munic_protocols.txt ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_protocols.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_sections.txt > /tmp/el2011_mayor_munic_sections.txt && mv /tmp/el2011_mayor_munic_sections.txt ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_sections.txt

# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_readme.txt > /tmp/el2011_mayor_mrlty_readme.txt && mv /tmp/el2011_mayor_mrlty_readme.txt ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_readme.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_readme.txt > /tmp/el2011_mayor_munic_readme.txt && mv /tmp/el2011_mayor_munic_readme.txt ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_readme.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/общински\ съветници/el2011_council_readme.txt > /tmp/el2011_council_readme.txt && mv /tmp/el2011_council_readme.txt ./files/mayor_2011_1/общински\ съветници/el2011_council_readme.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_readme.txt > /tmp/el2011_mayor_mrlty_readme.txt && mv /tmp/el2011_mayor_mrlty_readme.txt ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_readme.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_readme.txt > /tmp/el2011_mayor_munic_readme.txt && mv /tmp/el2011_mayor_munic_readme.txt ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_readme.txt

# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_result.txt > /tmp/el2011_mayor_mrlty_result.txt && mv /tmp/el2011_mayor_mrlty_result.txt ./files/mayor_2011_1/кмет\ на\ кметство/el2011_mayor_mrlty_result.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_result.txt > /tmp/el2011_mayor_munic_result.txt && mv /tmp/el2011_mayor_munic_result.txt ./files/mayor_2011_1/кмет\ на\ община/el2011_mayor_munic_result.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_1/общински\ съветници/el2011_council_result.txt > /tmp/el2011_council_result.txt && mv /tmp/el2011_council_result.txt ./files/mayor_2011_1/общински\ съветници/el2011_council_result.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_result.txt > /tmp/el2011_mayor_mrlty_result.txt && mv /tmp/el2011_mayor_mrlty_result.txt ./files/mayor_2011_2/кмет\ на\ кметство/el2011_mayor_mrlty_result.txt
# iconv -f windows-1251 -t utf8 ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_result.txt > /tmp/el2011_mayor_munic_result.txt && mv /tmp/el2011_mayor_munic_result.txt ./files/mayor_2011_2/кмет\ на\ община/el2011_mayor_munic_result.txt


rm db/regional_2011.db
cat ./db/elections/2011_regional/structure.sql | sqlite3 db/regional_2011.db

sqlite3 db/regional_2011.db ".read ./db/elections/2019_regional/voting_locations_2019.sql"

sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_candidates.txt' _2011_mayor_1_candidates"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_cikparties.txt' _2011_mayor_1_cik_parties"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_coalitions.txt' _2011_mayor_1_coalitions"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_protocols.txt' _2011_mayor_1_protocols"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_sections.txt' _2011_mayor_1_sections"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_votes.txt' _2011_mayor_1_votes"
 

sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_candidates.txt' _2011_mayor_municipality_1_candidates"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_cikparties.txt' _2011_mayor_municipality_1_cik_parties"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_coalitions.txt' _2011_mayor_municipality_1_coalitions"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_protocols.txt' _2011_mayor_municipality_1_protocols"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_sections.txt' _2011_mayor_municipality_1_sections"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_votes.txt' _2011_mayor_municipality_1_votes"
 

sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_candidates.txt' _2011_council_region_1_candidates"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_cikparties.txt' _2011_council_region_1_cik_parties"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_coalitions.txt' _2011_council_region_1_coalitions"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_protocols.txt' _2011_council_region_1_protocols"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_sections.txt' _2011_council_region_1_sections"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_votes.txt' _2011_council_region_1_votes"
 

sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_candidates.txt' _2011_mayor_2_candidates"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_cikparties.txt' _2011_mayor_2_cik_parties"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_coalitions.txt' _2011_mayor_2_coalitions"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_protocols.txt' _2011_mayor_2_protocols"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_sections.txt' _2011_mayor_2_sections"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_votes.txt' _2011_mayor_2_votes"
 

sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_candidates.txt' _2011_mayor_municipality_2_candidates"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_cikparties.txt' _2011_mayor_municipality_2_cik_parties"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_coalitions.txt' _2011_mayor_municipality_2_coalitions"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_protocols.txt' _2011_mayor_municipality_2_protocols"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_sections.txt' _2011_mayor_municipality_2_sections"
sqlite3 db/regional_2011.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_votes.txt' _2011_mayor_municipality_2_votes"
 
sqlite3 db/regional_2011.db ".read ./db/elections/2011_regional/convert.sql"