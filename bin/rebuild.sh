#!/bin/bash

rm db/all_elections.db
cat ./db/structure.sql | sqlite3 db/all_elections.db

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/voting_locations_2019_with_coordinates.csv voting_locations_2019"

# Parliament

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/cik_parties_26.03.2017.txt parliament_2017_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/local_candidates_26.03.2017.txt parliament_2017_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/local_parties_26.03.2017.txt parliament_2017_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/preferences_26.03.2017.txt parliament_2017_preferences"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/protocols_26.03.2017.txt parliament_2017_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/sections_26.03.2017.txt parliament_2017_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/votes_26.03.2017.txt parliament_2017_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/candidates_pe2014.txt parliament_2014_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/ind_pe2014.txt parliament_2014_ind"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/parties_pe2014.txt parliament_2014_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/preferences_pe2014.txt parliament_2014_preferences"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/protocols_pe2014.txt parliament_2014_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/sections_pe2014.txt parliament_2014_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/votes_pe2014.txt parliament_2014_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_candidates.txt parliament_2013_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_cikparties.txt parliament_2013_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_protocols.txt parliament_2013_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_sections.txt parliament_2013_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_votes.txt parliament_2013_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_majorvotes.txt parliament_2009_majorvotes"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_partyvotes.txt parliament_2009_partyvotes"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_protocols.txt parliament_2009_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_sections.txt parliament_2009_sections"

# President
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_candidates.txt president_2011_1_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_protocols.txt president_2011_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_sections.txt president_2011_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_votes.txt president_2011_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_candidates.txt president_2011_2_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_protocols.txt president_2011_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_sections.txt president_2011_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_votes.txt president_2011_2_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/cik_candidates_06.11.2016.txt president_2016_1_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/protocols_06.11.2016.txt president_2016_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/sections_06.11.2016.txt president_2016_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/votes_06.11.2016.txt president_2016_1_votes"

# European

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/cik_candidates.txt european_2019_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/cik_parties.txt european_2019_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/preferences.txt european_2019_preferences"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/preferences_mv.txt european_2019_preferences_mv"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/protocols.txt european_2019_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/sections.txt european_2019_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/votes.txt european_2019_votes"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2019/votes_mv.txt european_2019_votes_mv"


sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/candidates_eu2014.txt european_2014_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/parties_eu2014.txt european_2014_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/preferences_eu2014.txt european_2014_preferences"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/protocols_eu2014.txt european_2014_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/sections_eu2014.txt european_2014_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2014/export/votes_eu2014.txt european_2014_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_preferences.txt european_2009_preferences"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_protocols.txt european_2009_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/european_2009/euro2009_sections.txt european_2009_sections"

# Mayor and local council

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/cik_parties_27.10.2019.txt mayor_2019_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/local_candidates_27.10.2019.txt mayor_2019_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/local_parties_27.10.2019.txt mayor_2019_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/protocols_27.10.2019.txt mayor_2019_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/sections_27.10.2019.txt mayor_2019_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КК/votes_27.10.2019.txt mayor_2019_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/cik_parties_27.10.2019.txt mayor_municipality_2019_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/local_candidates_27.10.2019.txt mayor_municipality_2019_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/local_parties_27.10.2019.txt mayor_municipality_2019_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/protocols_27.10.2019.txt mayor_municipality_2019_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/sections_27.10.2019.txt mayor_municipality_2019_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КО/votes_27.10.2019.txt mayor_municipality_2019_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/cik_parties_27.10.2019.txt mayor_region_2019_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/local_candidates_27.10.2019.txt mayor_region_2019_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/local_parties_27.10.2019.txt mayor_region_2019_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/protocols_27.10.2019.txt mayor_region_2019_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/sections_27.10.2019.txt mayor_region_2019_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/КР/votes_27.10.2019.txt mayor_region_2019_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/cik_parties_27.10.2019.txt council_region_2019_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/local_candidates_27.10.2019.txt council_region_2019_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/local_parties_27.10.2019.txt council_region_2019_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/protocols_27.10.2019.txt council_region_2019_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/sections_27.10.2019.txt council_region_2019_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР1/ОС/votes_27.10.2019.txt council_region_2019_1_votes"

      
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/cik_parties_03.11.2019.txt mayor_2019_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/local_candidates_03.11.2019.txt mayor_2019_2_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/local_parties_03.11.2019.txt mayor_2019_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/protocols_03.11.2019.txt mayor_2019_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/sections_03.11.2019.txt mayor_2019_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КК/votes_03.11.2019.txt mayor_2019_2_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/cik_parties_03.11.2019.txt mayor_municipality_2019_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/local_candidates_03.11.2019.txt mayor_municipality_2019_2_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/local_parties_03.11.2019.txt mayor_municipality_2019_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/protocols_03.11.2019.txt mayor_municipality_2019_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/sections_03.11.2019.txt mayor_municipality_2019_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КО/votes_03.11.2019.txt mayor_municipality_2019_2_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/cik_parties_03.11.2019.txt mayor_region_2019_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/local_candidates_03.11.2019.txt mayor_region_2019_2_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/local_parties_03.11.2019.txt mayor_region_2019_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/protocols_03.11.2019.txt mayor_region_2019_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/sections_03.11.2019.txt mayor_region_2019_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2019/ТУР2/КР/votes_03.11.2019.txt mayor_region_2019_2_votes"

# 2015
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/cik_parties_25.10.2015.txt mayor_2015_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/local_candidates_25.10.2015.txt mayor_2015_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/local_parties_25.10.2015.txt mayor_2015_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/protocols_25.10.2015.txt mayor_2015_1_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/sections_25.10.2015.txt mayor_2015_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КК/votes_25.10.2015.txt mayor_2015_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/cik_parties_25.10.2015.txt mayor_municipality_2015_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/local_candidates_25.10.2015.txt mayor_municipality_2015_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/local_parties_25.10.2015.txt mayor_municipality_2015_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/protocols_25.10.2015.txt mayor_municipality_2015_1_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/sections_25.10.2015.txt mayor_municipality_2015_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КО/votes_25.10.2015.txt mayor_municipality_2015_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/cik_parties_25.10.2015.txt mayor_region_2015_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/local_candidates_25.10.2015.txt mayor_region_2015_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/local_parties_25.10.2015.txt mayor_region_2015_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/protocols_25.10.2015.txt mayor_region_2015_1_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/sections_25.10.2015.txt mayor_region_2015_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/КР/votes_25.10.2015.txt mayor_region_2015_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/cik_parties_25.10.2015.txt council_2015_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/local_candidates_25.10.2015.txt council_2015_1_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/local_parties_25.10.2015.txt council_2015_1_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/protocols_25.10.2015.txt council_2015_1_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/sections_25.10.2015.txt council_2015_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_1/ОС/votes_25.10.2015.txt council_2015_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/cik_parties_01.11.2015.txt mayor_2015_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/local_candidates_01.11.2015.txt mayor_2015_2_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/local_parties_01.11.2015.txt mayor_2015_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/protocols_01.11.2015.txt mayor_2015_2_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/sections_01.11.2015.txt mayor_2015_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КК/votes_01.11.2015.txt mayor_2015_2_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/cik_parties_01.11.2015.txt mayor_municipality_2015_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/local_candidates_01.11.2015.txt mayor_municipality_2015_2_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/local_parties_01.11.2015.txt mayor_municipality_2015_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/protocols_01.11.2015.txt mayor_municipality_2015_2_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/sections_01.11.2015.txt mayor_municipality_2015_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КО/votes_01.11.2015.txt mayor_municipality_2015_2_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/cik_parties_01.11.2015.txt mayor_region_2015_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/local_candidates_01.11.2015.txt mayor_region_2015_2_local_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/local_parties_01.11.2015.txt mayor_region_2015_2_local_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/protocols_01.11.2015.txt mayor_region_2015_2_cik_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/sections_01.11.2015.txt mayor_region_2015_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/mayor_2015_2/КР/votes_01.11.2015.txt mayor_region_2015_2_votes"


# 2011

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_candidates.txt' mayor_2011_1_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_cikparties.txt' mayor_2011_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_coalitions.txt' mayor_2011_1_coalitions"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_protocols.txt' mayor_2011_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_sections.txt' mayor_2011_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на кметство/el2011_mayor_mrlty_votes.txt' mayor_2011_1_votes"
 

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_candidates.txt' mayor_municipality_2011_1_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_cikparties.txt' mayor_municipality_2011_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_coalitions.txt' mayor_municipality_2011_1_coalitions"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_protocols.txt' mayor_municipality_2011_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_sections.txt' mayor_municipality_2011_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/кмет на община/el2011_mayor_munic_votes.txt' mayor_municipality_2011_1_votes"
 

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_candidates.txt' council_2011_1_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_cikparties.txt' council_2011_1_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_coalitions.txt' council_2011_1_coalitions"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_protocols.txt' council_2011_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_sections.txt' council_2011_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_1/общински съветници/el2011_council_votes.txt' council_2011_1_votes"
 

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_candidates.txt' mayor_2011_2_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_cikparties.txt' mayor_2011_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_coalitions.txt' mayor_2011_2_coalitions"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_protocols.txt' mayor_2011_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_sections.txt' mayor_2011_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на кметство/el2011_mayor_mrlty_votes.txt' mayor_2011_2_votes"
 

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_candidates.txt' mayor_municipality_2011_2_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_cikparties.txt' mayor_municipality_2011_2_cik_parties"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_coalitions.txt' mayor_municipality_2011_2_coalitions"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_protocols.txt' mayor_municipality_2011_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_sections.txt' mayor_municipality_2011_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import './files/mayor_2011_2/кмет на община/el2011_mayor_munic_votes.txt' mayor_municipality_2011_2_votes"
 

