.read './db/structure.sql'
.read './db/elections/2009_parliament/voting_locations_2016.sql'

insert or ignore into election_periods(id, name) values (8, 'Парламентарни избори 2009');
insert or ignore into elections (id, name, round1_date, election_period_id) values
(27, 'Парламентарни избори 2009', '2009-07-05', 8);

insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 1, party1_valid from _2009_parliament_partyvotes where party1_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 2, party2_valid from _2009_parliament_partyvotes where party2_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 3, party3_valid from _2009_parliament_partyvotes where party3_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 4, party4_valid from _2009_parliament_partyvotes where party4_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 5, party5_valid from _2009_parliament_partyvotes where party5_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 6, party6_valid from _2009_parliament_partyvotes where party6_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 7, party7_valid from _2009_parliament_partyvotes where party7_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 8, party8_valid from _2009_parliament_partyvotes where party8_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 9, party9_valid from _2009_parliament_partyvotes where party9_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 10, party10_valid from _2009_parliament_partyvotes where party10_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 11, party11_valid from _2009_parliament_partyvotes where party11_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 12, party12_valid from _2009_parliament_partyvotes where party12_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 13, party13_valid from _2009_parliament_partyvotes where party13_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 14, party14_valid from _2009_parliament_partyvotes where party14_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 15, party15_valid from _2009_parliament_partyvotes where party15_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 16, party16_valid from _2009_parliament_partyvotes where party16_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 17, party17_valid from _2009_parliament_partyvotes where party17_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 18, party18_valid from _2009_parliament_partyvotes where party18_valid is not null;
insert into temp_votes (election_id, section_code, ballot_number, valid_votes)  select 27, section_id, 19, party19_valid from _2009_parliament_partyvotes where party19_valid is not null;
drop table _2009_parliament_partyvotes;


insert or ignore into location_neighborhoods (location_id, neighborhood) select distinct location_id, replace(neighborhood, '"', '') from voting_locations_2016 where neighborhood != '';
insert or ignore into voting_locations (location_id, cik_address, address, lat, lng, postcode, location_neighborhood_id) select location_id, address, replace(formatted_address, '"', ''), lat, lng, replace(postcode, '"', ''), (select id from location_neighborhoods where location_neighborhoods.location_id=voting_locations_2016.location_id and neighborhood=replace(voting_locations_2016.neighborhood, '"', '')) from voting_locations_2016;

insert into temp_protocols (election_id, section_code, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box) select 27, section_id, total_voters, voters_by_signature, ballots_in_box, total_invalid_ballots, ballots_in_box-total_invalid_ballots from _2009_parliament_protocols;
drop table _2009_parliament_protocols;

insert or ignore into sections (election_period_id, location_id, section_code) select 8, (select id from locations where locations.ekatte=_2009_parliament_sections.ekatte), section_id from _2009_parliament_sections;
drop table _2009_parliament_sections;

insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 1, major1_valid from _2009_parliament_majorvotes where major1_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 2, major2_valid from _2009_parliament_majorvotes where major2_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 3, major3_valid from _2009_parliament_majorvotes where major3_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 4, major4_valid from _2009_parliament_majorvotes where major4_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 5, major5_valid from _2009_parliament_majorvotes where major5_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 6, major6_valid from _2009_parliament_majorvotes where major6_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 7, major7_valid from _2009_parliament_majorvotes where major7_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 8, major8_valid from _2009_parliament_majorvotes where major8_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 9, major9_valid from _2009_parliament_majorvotes where major9_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 10, major10_valid from _2009_parliament_majorvotes where major10_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 11, major11_valid from _2009_parliament_majorvotes where major11_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 12, major12_valid from _2009_parliament_majorvotes where major12_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 13, major13_valid from _2009_parliament_majorvotes where major13_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 14, major14_valid from _2009_parliament_majorvotes where major14_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 15, major15_valid from _2009_parliament_majorvotes where major15_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 16, major16_valid from _2009_parliament_majorvotes where major16_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 17, major17_valid from _2009_parliament_majorvotes where major17_valid is not null;
insert into temp_preferences (election_id, section_code, candidate_id, valid_votes) select 27, section_id, 18, major18_valid from _2009_parliament_majorvotes where major18_valid is not null;
drop table _2009_parliament_majorvotes;


update sections set address_id=(select id from voting_locations join voting_locations_2016 on voting_locations_2016.address=voting_locations.cik_address and sections.section_code=voting_locations_2016.section_id) where election_period_id=8 and address_id is null;
drop table temp_parties;
drop table voting_locations_2016;
insert into votes (election_id, round, section_id, ballot_number, valid_votes, invalid_votes)  select election_id, round, sections.id, ballot_number, valid_votes, invalid_votes from temp_votes join sections on sections.section_code=temp_votes.section_code;
drop table temp_votes;
insert into protocols (election_id, round, section_id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one) select election_id, round, sections.id, section_type, total_voters, voters_by_signature, ballots_in_box, invalid_ballots_in_box, valid_ballots_in_box, no_one from temp_protocols join sections on sections.section_code=temp_protocols.section_code;
drop table temp_protocols;
insert into preferences (election_id, section_id, party_id, candidate_id, valid_votes, machine_voting)  select election_id, sections.id, party_id, candidate_id, valid_votes, temp_preferences.machine_voting from temp_preferences join sections on sections.section_code=temp_preferences.section_code;
drop table temp_preferences;
vacuum;