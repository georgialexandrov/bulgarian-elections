const sqlite3 = require('sqlite3');
const sqlite = require('sqlite');

const openDatabase = () =>
  sqlite.open({
    filename: '../db/regional_2019.db',
    driver: sqlite3.Database,
  });

const query = query =>
  openDatabase()
  .then(db => db.all(query))
  .catch(e => console.error('Lo6o mi e'));

const districts = () => query(`select * from districts`);
const municipalities = ({
    district_id
  }) =>
  query(`select * from municipalities where district_id = ${district_id}`);

const elections = () => query(`select * from elections`);
const election_results = ({
    election_id,
    municipality_id
  }) =>
  query(`
  select candidates.party_ballot,
    candidates.candidate_name,
    sum(votes.valid_votes) as valid_votes,
    sum(votes.invalid_votes) as invalid_votes,
    votes.ballot_number
  from candidates
  join votes on votes.ballot_number = candidates.party_ballot and votes.election_id = ${election_id} and votes.round=1
  join protocols on protocols.section_id = votes.section_id and protocols.election_id = ${election_id} and protocols.round=1
  join sections on sections.id = protocols.section_id and sections.location_id in (select id from locations where municipality_id = ${municipality_id})
  where candidates.election_id = ${election_id} and candidates.location_id in (select id from locations where municipality_id = ${municipality_id})
  group by party_id
  order by valid_votes desc

  `);
module.exports = {
  elections,
  election_results,
  districts,
  municipalities,
};