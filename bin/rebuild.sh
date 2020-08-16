#!/bin/bash

rm db/all_elections.db
cat ./db/structure.sql | sqlite3 db/all_elections.db

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/voting_locations_2019_with_coordinates.csv voting_locations_2019"

# Parliament

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/cik_parties_26.03.2017.txt parliament_cik_parties_2017"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/local_candidates_26.03.2017.txt parliament_local_candidates_2017"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/local_parties_26.03.2017.txt parliament_local_parties_2017"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/preferences_26.03.2017.txt parliament_preferences_2017"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/protocols_26.03.2017.txt parliament_protocols_2017"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/sections_26.03.2017.txt parliament_sections_2017"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2017/votes_26.03.2017.txt parliament_votes_2017"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/candidates_pe2014.txt parliament_candidates_2014"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/ind_pe2014.txt parliament_ind_2014"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/parties_pe2014.txt parliament_parties_2014"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/preferences_pe2014.txt parliament_preferences_2014"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/protocols_pe2014.txt parliament_protocols_2014"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/sections_pe2014.txt parliament_sections_2014"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2014/votes_pe2014.txt parliament_votes_2014"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_candidates.txt parliament_candidates_2013"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_cikparties.txt parliament_parties_2013"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_protocols.txt parliament_protocols_2013"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_sections.txt parliament_sections_2013"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2013/pe2013_pe_votes.txt parliament_votes_2013"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_majorvotes.txt parliament_majorvotes_2009"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_partyvotes.txt parliament_partyvotes_2009"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_protocols.txt parliament_protocols_2009"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/parliament2009/pe2009_sections.txt parliament_sections_2009"

# President
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_candidates.txt president_2011_1_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_protocols.txt president_2011_1_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_sections.txt president_2011_1_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_1/el2011_president_votes.txt president_2011_1_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_candidates.txt president_2011_2_candidates"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_protocols.txt president_2011_2_protocols"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_sections.txt president_2011_2_sections"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2011_2/el2011_president_votes.txt president_2011_2_votes"

sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/cik_candidates_06.11.2016.txt president_candidates_2016_1"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/protocols_06.11.2016.txt president_protocols_2016_1"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/sections_06.11.2016.txt president_sections_2016_1"
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/president_2016/06.11.2016/votes_06.11.2016.txt president_votes_2016_1"

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
