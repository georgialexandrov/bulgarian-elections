#!/bin/bash

rm db/all_elections.db
cat ./db/structure.sql | sqlite3 db/all_elections.db

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
sqlite3 db/all_elections.db ".mode csv" ".separator ';'" ".import ./files/voting_sections_2019.csv voting_locations_2019"
