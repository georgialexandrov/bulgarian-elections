const sqlite3 = require("sqlite3");
const sqlite = require("sqlite");

const openDatabase = () =>
  sqlite.open({
    filename: "/Users/georgialexandrov/Developer/bg_vote_parser/db/mayor_2019.db",
    driver: sqlite3.Database,
  });

const query = (query) => openDatabase().then((db) => db.all(query));

const elections = () => query(`select * from elections`)

const election_results = ({
  election_id,
  municipality_id
}) => query(`
  select candidates.candidate_id,
  candidates.candidate_name,
  sum(votes.valid_votes),
  sum(votes.invalid_votes),
  votes.ballot_number from protocols join sections on sections.section_id = protocols.section_id and protocols.election_id = ${election_id} join votes on protocols.section_id = votes.section_id and votes.election_id = ${election_id} left join candidates on candidates.party_id = votes.ballot_number and candidates.election_id = ${election_id} and candidates.location_id in (select id from locations where municipality_id = ${municipality_id}) where sections.location_id in (select id from locations where municipality_id = ${municipality_id}) group by party_id;
  `)
module.exports = {
  elections,
  election_results
}