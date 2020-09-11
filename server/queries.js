const sqlite3 = require('sqlite3');
const sqlite = require('sqlite');

const openDatabase = () =>
  sqlite.open({
    filename: '../db/regional_2019.db',
    driver: sqlite3.Database,
  });

const query = query =>
  openDatabase()
  .then(db => {
    console.log(query)
    return db.all(query)
  })
  .catch(e => console.error('Lo6o mi e'));

const districts = ({
  electionId
}) => query(`
select
distinct districts.id, district_name as name
from districts
join municipalities on municipalities.district_id=districts.id
join locations on municipalities.id=locations.municipality_id
join sections on sections.location_id=locations.id
join protocols on protocols.section_id=sections.id and protocols.election_id=${electionId}
where protocols.election_id=${electionId}
`);

const municipalities = ({
  district_id
}) => query(`select id, municipality_name as name from municipalities where district_id = ${district_id}`);

const locations = ({
  municipalityId
}) => query(`select id, location_name as name from locations where municipality_id = ${municipalityId}`);

const regions = ({
  municipalityId
}) => query(`select id, region_name as name from municipality_regions where municipality_id = ${municipalityId}`);

const elections = () => query(`select * from elections`);

const sections = ({
  election_id,
  municipality_id,
  round
}) => query(`
select
sections.id as id,
  lat,
  lng,
  address,
  cik_address,
  sum(total_voters) as total_voters,
  sum(voters_by_signature) as voters_by_signature,
  sum(ballots_in_box) as ballots_in_box,
  sum(valid_ballots_in_box) as valid_ballots_in_box,
  sum(invalid_ballots_in_box) as invalid_ballots_in_box,
  sum(no_one) as no_one,
  group_concat(sections.section_code) as section_codes
from sections
join locations on sections.location_id=locations.id
left join voting_locations on sections.address_id=voting_locations.id
join protocols on protocols.section_id=sections.id and protocols.round=${round}
where locations.municipality_id=${municipality_id} and protocols.election_id=${election_id} and lat is not null and lng is not null
group by address;
`)

const municipality_region_sections = ({
  election_id,
  municipality_region_id,
  round
}) => query(`
select
  lat,
  lng,
  address,
  cik_address,
  sum(total_voters) as total_voters,
  sum(voters_by_signature) as voters_by_signature,
  sum(ballots_in_box) as ballots_in_box,
  sum(valid_ballots_in_box) as valid_ballots_in_box,
  sum(invalid_ballots_in_box) as invalid_ballots_in_box,
  sum(no_one) as no_one,
  group_concat(sections.section_code) as section_codes
from sections
left join voting_locations on sections.address_id=voting_locations.id
join protocols on protocols.section_id=sections.id and protocols.round=${round}
where sections.municipality_region_id=${municipality_region_id} and protocols.election_id=${election_id} and lat is not null and lng is not null
group by address;
`)

const mayor_municipality_results = ({
    election_id,
    municipality_id,
    round
  }) =>
  query(`
  select
    candidates.party_ballot,
    parties.name as party_name,
    candidates.candidate_name,
    sum(total_voters) as total_voters,
    sum(voters_by_signature) as voters_by_signature,
    sum(ballots_in_box) as ballots_in_box,
    sum(valid_ballots_in_box) as valid_ballots_in_box,
    sum(invalid_ballots_in_box) as invalid_ballots_in_box,
    sum(no_one) as no_one,
    sum(votes.valid_votes) as valid_votes,
    sum(votes.invalid_votes) as invalid_votes,
    votes.ballot_number,
    cast(valid_votes as float) / cast(protocols.valid_ballots_in_box as float) * 100 as percent
  from candidates
  join votes on votes.ballot_number = candidates.party_ballot and votes.election_id = ${election_id} and votes.round=${round}
  join protocols on protocols.section_id = votes.section_id and protocols.election_id = ${election_id} and protocols.round=${round}
  join sections on sections.id = protocols.section_id and sections.location_id in (select id from locations where municipality_id = ${municipality_id})
  join parties on parties.id=candidates.party_id
  where candidates.election_id = ${election_id} and candidates.location_id in (select id from locations where municipality_id = ${municipality_id})
  group by party_id
  order by valid_votes desc
  `);

const mayor_municipality_region_results = ({
    election_id,
    municipality_id,
    regionId,
    round,
  }) =>
  query(`
  select
    candidates.party_ballot,
    parties.name as party_name,
    candidates.candidate_name,
    sum(total_voters) as total_voters,
    sum(voters_by_signature) as voters_by_signature,
    sum(ballots_in_box) as ballots_in_box,
    sum(valid_ballots_in_box) as valid_ballots_in_box,
    sum(invalid_ballots_in_box) as invalid_ballots_in_box,
    sum(no_one) as no_one,
    sum(votes.valid_votes) as valid_votes,
    sum(votes.invalid_votes) as invalid_votes,
    votes.ballot_number,
    cast(valid_votes as float) / cast(protocols.valid_ballots_in_box as float) * 100 as percent
  from candidates
  join votes on votes.ballot_number = candidates.party_ballot and votes.election_id = ${election_id} and votes.round=${round}
  join protocols on protocols.section_id = votes.section_id and protocols.election_id = ${election_id} and protocols.round=${round}
  join sections on sections.id = protocols.section_id
  join parties on parties.id=candidates.party_id
  where candidates.election_id = ${election_id} and sections.municipality_region_id=${regionId} and candidates.municipality_region_id=${regionId}
  group by party_id
  order by valid_votes desc
  `);

const mayor_municipality_section_result = ({
  election_id,
  municipality_id,
  round,
  lat,
  lng
}) => query(`
select lat, lng, cik_address, address, candidates.party_ballot,
    parties.name as party_name,
    candidates.candidate_name,
    sum(votes.valid_votes) as valid_votes,
    sum(votes.invalid_votes) as invalid_votes,
    votes.ballot_number,
    cast(valid_votes as float) / cast(protocols.valid_ballots_in_box as float) * 100 as percent
  from candidates
  join votes on votes.ballot_number = candidates.party_ballot and votes.election_id = ${election_id} and votes.round=${round}
  join protocols on protocols.section_id = votes.section_id and protocols.election_id = ${election_id} and protocols.round=${round}
  join sections on sections.id = protocols.section_id and sections.location_id in (select id from locations where municipality_id = ${municipality_id})
  join parties on parties.id=candidates.party_id
  join voting_locations on voting_locations.id=sections.address_id
  where candidates.election_id = ${election_id} and candidates.location_id in (select id from locations where municipality_id = ${municipality_id}) and lat =${lat} and lng =${lng}
  group by party_id
  order by valid_votes desc
`)


const mayor_municipality_region_section_result = ({
  election_id,
  round,
  lat,
  lng,
  municipality_region_id
}) => query(`
select lat, lng, cik_address, address, candidates.party_ballot,
    parties.name as party_name,
    candidates.candidate_name,
    sum(votes.valid_votes) as valid_votes,
    sum(votes.invalid_votes) as invalid_votes,
    votes.ballot_number,
    cast(valid_votes as float) / cast(protocols.valid_ballots_in_box as float) * 100 as percent
  from candidates
  join votes on votes.ballot_number = candidates.party_ballot and votes.election_id = ${election_id} and votes.round=${round}
  join protocols on protocols.section_id = votes.section_id and protocols.election_id = ${election_id} and protocols.round=${round}
  join sections on sections.id = protocols.section_id and sections.municipality_region_id = ${municipality_region_id}
  join parties on parties.id=candidates.party_id
  join voting_locations on voting_locations.id=sections.address_id
  where candidates.election_id = ${election_id} and candidates.municipality_region_id=${municipality_region_id} and lat =${lat} and lng =${lng}
  group by party_id
  order by valid_votes desc
`)



const municipality_sections = ({
  election_id,
  location_id,
  round
}) => query(`
select
  lat,
  lng,
  address,
  cik_address,
  sum(total_voters) as total_voters,
  sum(voters_by_signature) as voters_by_signature,
  sum(ballots_in_box) as ballots_in_box,
  sum(valid_ballots_in_box) as valid_ballots_in_box,
  sum(invalid_ballots_in_box) as invalid_ballots_in_box,
  sum(no_one) as no_one,
  group_concat(sections.section_code) as section_codes
from sections
left join voting_locations on sections.address_id=voting_locations.id
join protocols on protocols.section_id=sections.id and protocols.round=${round}
where sections.location_id=${location_id} and protocols.election_id=${election_id} and lat is not null and lng is not null
group by address;
`);

const mayor_results = ({
    election_id,
    location_id,
    round
  }) =>
  query(`
select
  candidates.party_ballot,
  parties.name as party_name,
  candidates.candidate_name,
  sum(total_voters) as total_voters,
  sum(voters_by_signature) as voters_by_signature,
  sum(ballots_in_box) as ballots_in_box,
  sum(valid_ballots_in_box) as valid_ballots_in_box,
  sum(invalid_ballots_in_box) as invalid_ballots_in_box,
  sum(no_one) as no_one,
  sum(votes.valid_votes) as valid_votes,
  sum(votes.invalid_votes) as invalid_votes,
  votes.ballot_number,
  cast(valid_votes as float) / cast(protocols.valid_ballots_in_box as float) * 100 as percent
from candidates
join votes on votes.ballot_number = candidates.party_ballot and votes.election_id = ${election_id} and votes.round=${round}
join protocols on protocols.section_id = votes.section_id and protocols.election_id = ${election_id} and protocols.round=${round}
join sections on sections.id = protocols.section_id and sections.location_id = ${location_id}
join parties on parties.id=candidates.party_id
where candidates.election_id = ${election_id} and candidates.location_id = ${location_id}
group by party_id
order by valid_votes desc
`);

const mayor_section_result = ({
  election_id,
  round,
  lat,
  lng,
  location_id
}) => query(`
select lat, lng, cik_address, address, candidates.party_ballot,
    parties.name as party_name,
    candidates.candidate_name,
    sum(votes.valid_votes) as valid_votes,
    sum(votes.invalid_votes) as invalid_votes,
    votes.ballot_number,
    cast(valid_votes as float) / cast(protocols.valid_ballots_in_box as float) * 100 as percent
  from candidates
  join votes on votes.ballot_number = candidates.party_ballot and votes.election_id = ${election_id} and votes.round=${round}
  join protocols on protocols.section_id = votes.section_id and protocols.election_id = ${election_id} and protocols.round=${round}
  join sections on sections.id = protocols.section_id and sections.location_id = ${location_id}
  join parties on parties.id=candidates.party_id
  join voting_locations on voting_locations.id=sections.address_id
  where candidates.election_id = ${election_id} and candidates.location_id=${location_id} and lat =${lat} and lng =${lng}
  group by party_id
  order by valid_votes desc
`)

const council_party_result = ({
  electionId,
  municipalityId
}) => query(`
select
  votes.ballot_number,
  parties.name as party_name,
  sum(valid_votes) as valid_votes,
  sum(total_voters) as total_voters,
  sum(voters_by_signature) as voters_by_signature,
  sum(ballots_in_box) as ballots_in_box,
  sum(valid_ballots_in_box) as valid_ballots_in_box,
  sum(invalid_ballots_in_box) as invalid_ballots_in_box,
  sum(no_one) as no_one
from votes
join sections on votes.section_id=sections.id and sections.location_id in (select id from locations where municipality_id=${municipalityId})
join protocols on protocols.section_id=sections.id and protocols.election_id=${electionId}
join parties on parties.id=(select candidates.party_id from candidates where party_ballot=votes.ballot_number and candidates.location_id in (select id from locations where municipality_id=${municipalityId}))
where votes.election_id=${electionId}
group by votes.ballot_number, parties.id;
`)

const council_preferences_result = ({
  electionId,
  municipalityId
}) => query(`
select
  candidates.party_ballot as party_ballot,
  parties.name as party_name,
  preferences.candidate_id as candidate_ballot,
  candidates.candidate_name as candidate_name,
  sum(preferences.valid_votes) as valid_votes
from candidates
join preferences on preferences.party_id=candidates.party_ballot and preferences.candidate_id=candidates.candidate_id and candidates.location_id in (select id from locations where municipality_id=${municipalityId}) and candidates.election_id=${electionId}
join sections on sections.id=preferences.section_id and sections.location_id in (select id from locations where municipality_id=${municipalityId})
join protocols on protocols.section_id=sections.id and protocols.election_id=${electionId}
join parties on parties.id=candidates.party_id
where preferences.election_id=${electionId} and preferences.candidate_id != 0
group by preferences.party_id, preferences.candidate_id
order by valid_votes desc;
`)

module.exports = {
  elections,
  mayor_municipality_results,
  districts,
  municipalities,
  locations,
  sections,
  mayor_municipality_section_result,
  regions,
  mayor_municipality_region_results,
  mayor_municipality_region_section_result,
  municipality_region_sections,

  municipality_sections,
  mayor_results,
  mayor_section_result,

  council_party_result,
  council_preferences_result,
};