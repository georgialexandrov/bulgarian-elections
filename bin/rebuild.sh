#!/bin/bash

rm db/all_elections.db
cat ./db/structure.sql | sqlite3 db/all_elections.db

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".read ./db/voting_locations_2019.sql"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".read ./db/voting_locations_2019_spring.sql"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".read ./db/voting_locations_2017.sql"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".read ./db/voting_locations_2016.sql"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".read ./db/voting_locations_2015.sql"

# Parliament

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/cik_parties_26.03.2017.txt _2017_parliament_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/local_candidates_26.03.2017.txt _2017_parliament_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/local_parties_26.03.2017.txt _2017_parliament_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/preferences_26.03.2017.txt _2017_parliament_preferences"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/protocols_26.03.2017.txt _2017_parliament_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/sections_26.03.2017.txt _2017_parliament_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/votes_26.03.2017.txt _2017_parliament_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/candidates_pe2014.txt _2014_parliament_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/ind_pe2014.txt _2014_parliament_ind"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/parties_pe2014.txt _2014_parliament_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/preferences_pe2014.txt _2014_parliament_preferences"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/protocols_pe2014.txt _2014_parliament_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/sections_pe2014.txt _2014_parliament_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/votes_pe2014.txt _2014_parliament_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_candidates.txt _2013_parliament_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_cikparties.txt _2013_parliament_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_protocols.txt _2013_parliament_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_sections.txt _2013_parliament_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_votes.txt _2013_parliament_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_majorvotes.txt _2009_parliament_majorvotes"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_partyvotes.txt _2009_parliament_partyvotes"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_protocols.txt _2009_parliament_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_sections.txt _2009_parliament_sections"

# President
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_candidates.txt _2011_president_1_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_protocols.txt _2011_president_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_sections.txt _2011_president_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_votes.txt _2011_president_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_candidates.txt _2011_president_2_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_protocols.txt _2011_president_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_sections.txt _2011_president_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_votes.txt _2011_president_2_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/cik_candidates_06.11.2016.txt _2016_president_1_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/protocols_06.11.2016.txt _2016_president_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/sections_06.11.2016.txt _2016_president_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/votes_06.11.2016.txt _2016_president_1_votes"

# European

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/cik_candidates.txt _2019_european_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/cik_parties.txt _2019_european_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/preferences.txt _2019_european_preferences"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/preferences_mv.txt _2019_european_preferences_mv"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/protocols.txt _2019_european_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/sections.txt _2019_european_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/votes.txt _2019_european_votes"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/votes_mv.txt _2019_european_votes_mv"


sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/candidates_eu2014.txt _2014_european_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/parties_eu2014.txt _2014_european_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/preferences_eu2014.txt _2014_european_preferences"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/protocols_eu2014.txt _2014_european_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/sections_eu2014.txt _2014_european_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/votes_eu2014.txt _2014_european_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_preferences.txt _2009_european_preferences"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_protocols.txt _2009_european_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_sections.txt _2009_european_sections"

# Mayor and local council

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/cik_parties_27.10.2019.txt _2019_mayor_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/local_candidates_27.10.2019.txt _2019_mayor_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/local_parties_27.10.2019.txt _2019_mayor_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/protocols_27.10.2019.txt _2019_mayor_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/sections_27.10.2019.txt _2019_mayor_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/votes_27.10.2019.txt _2019_mayor_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/cik_parties_27.10.2019.txt _2019_mayor_municipality_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/local_candidates_27.10.2019.txt _2019_mayor_municipality_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/local_parties_27.10.2019.txt _2019_mayor_municipality_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/protocols_27.10.2019.txt _2019_mayor_municipality_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/sections_27.10.2019.txt _2019_mayor_municipality_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/votes_27.10.2019.txt _2019_mayor_municipality_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/cik_parties_27.10.2019.txt _2019_mayor_region_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/local_candidates_27.10.2019.txt _2019_mayor_region_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/local_parties_27.10.2019.txt _2019_mayor_region_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/protocols_27.10.2019.txt _2019_mayor_region_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/sections_27.10.2019.txt _2019_mayor_region_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/votes_27.10.2019.txt _2019_mayor_region_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/cik_parties_27.10.2019.txt _2019_council_region_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/local_candidates_27.10.2019.txt _2019_council_region_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/local_parties_27.10.2019.txt _2019_council_region_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/preferences_27.10.2019.txt _2019_council_region_1_preferences"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/protocols_27.10.2019.txt _2019_council_region_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/sections_27.10.2019.txt _2019_council_region_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/votes_27.10.2019.txt _2019_council_region_1_votes"

      
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/cik_parties_03.11.2019.txt _2019_mayor_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/local_candidates_03.11.2019.txt _2019_mayor_2_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/local_parties_03.11.2019.txt _2019_mayor_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/protocols_03.11.2019.txt _2019_mayor_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/sections_03.11.2019.txt _2019_mayor_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/votes_03.11.2019.txt _2019_mayor_2_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/cik_parties_03.11.2019.txt _2019_mayor_municipality_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/local_candidates_03.11.2019.txt _2019_mayor_municipality_2_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/local_parties_03.11.2019.txt _2019_mayor_municipality_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/protocols_03.11.2019.txt _2019_mayor_municipality_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/sections_03.11.2019.txt _2019_mayor_municipality_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/votes_03.11.2019.txt _2019_mayor_municipality_2_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/cik_parties_03.11.2019.txt _2019_mayor_region_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/local_candidates_03.11.2019.txt _2019_mayor_region_2_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/local_parties_03.11.2019.txt _2019_mayor_region_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/protocols_03.11.2019.txt _2019_mayor_region_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/sections_03.11.2019.txt _2019_mayor_region_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/votes_03.11.2019.txt _2019_mayor_region_2_votes"

# 2015
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/cik_parties_25.10.2015.txt _2015_mayor_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/local_candidates_25.10.2015.txt _2015_mayor_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/local_parties_25.10.2015.txt _2015_mayor_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/protocols_25.10.2015.txt _2015_mayor_1_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/sections_25.10.2015.txt _2015_mayor_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/votes_25.10.2015.txt _2015_mayor_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/cik_parties_25.10.2015.txt _2015_mayor_municipality_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/local_candidates_25.10.2015.txt _2015_mayor_municipality_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/local_parties_25.10.2015.txt _2015_mayor_municipality_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/protocols_25.10.2015.txt _2015_mayor_municipality_1_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/sections_25.10.2015.txt _2015_mayor_municipality_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/votes_25.10.2015.txt _2015_mayor_municipality_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/cik_parties_25.10.2015.txt _2015_mayor_region_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/local_candidates_25.10.2015.txt _2015_mayor_region_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/local_parties_25.10.2015.txt _2015_mayor_region_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/protocols_25.10.2015.txt _2015_mayor_region_1_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/sections_25.10.2015.txt _2015_mayor_region_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/votes_25.10.2015.txt _2015_mayor_region_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/cik_parties_25.10.2015.txt _2015_council_region_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/local_candidates_25.10.2015.txt _2015_council_region_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/local_parties_25.10.2015.txt _2015_council_region_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/protocols_25.10.2015.txt _2015_council_region_1_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/sections_25.10.2015.txt _2015_council_region_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/votes_25.10.2015.txt _2015_council_region_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/cik_parties_01.11.2015.txt _2015_mayor_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/local_candidates_01.11.2015.txt _2015_mayor_2_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/local_parties_01.11.2015.txt _2015_mayor_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/protocols_01.11.2015.txt _2015_mayor_2_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/sections_01.11.2015.txt _2015_mayor_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/votes_01.11.2015.txt _2015_mayor_2_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/cik_parties_01.11.2015.txt _2015_mayor_municipality_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/local_candidates_01.11.2015.txt _2015_mayor_municipality_2_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/local_parties_01.11.2015.txt _2015_mayor_municipality_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/protocols_01.11.2015.txt _2015_mayor_municipality_2_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/sections_01.11.2015.txt _2015_mayor_municipality_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/votes_01.11.2015.txt _2015_mayor_municipality_2_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/cik_parties_01.11.2015.txt _2015_mayor_region_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/local_candidates_01.11.2015.txt _2015_mayor_region_2_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/local_parties_01.11.2015.txt _2015_mayor_region_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/protocols_01.11.2015.txt _2015_mayor_region_2_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/sections_01.11.2015.txt _2015_mayor_region_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/votes_01.11.2015.txt _2015_mayor_region_2_votes"


# 2011

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_candidates.txt' _2011_mayor_1_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_cikparties.txt' _2011_mayor_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_coalitions.txt' _2011_mayor_1_coalitions"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_protocols.txt' _2011_mayor_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_sections.txt' _2011_mayor_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_votes.txt' _2011_mayor_1_votes"
 

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_candidates.txt' _2011_mayor_municipality_1_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_cikparties.txt' _2011_mayor_municipality_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_coalitions.txt' _2011_mayor_municipality_1_coalitions"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_protocols.txt' _2011_mayor_municipality_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_sections.txt' _2011_mayor_municipality_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_votes.txt' _2011_mayor_municipality_1_votes"
 

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_candidates.txt' _2011_council_region_1_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_cikparties.txt' _2011_council_region_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_coalitions.txt' _2011_council_region_1_coalitions"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_protocols.txt' _2011_council_region_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_sections.txt' _2011_council_region_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_votes.txt' _2011_council_region_1_votes"
 

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_candidates.txt' _2011_mayor_2_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_cikparties.txt' _2011_mayor_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_coalitions.txt' _2011_mayor_2_coalitions"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_protocols.txt' _2011_mayor_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_sections.txt' _2011_mayor_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_votes.txt' _2011_mayor_2_votes"
 

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_candidates.txt' _2011_mayor_municipality_2_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_cikparties.txt' _2011_mayor_municipality_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_coalitions.txt' _2011_mayor_municipality_2_coalitions"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_protocols.txt' _2011_mayor_municipality_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_sections.txt' _2011_mayor_municipality_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_votes.txt' _2011_mayor_municipality_2_votes"
 

