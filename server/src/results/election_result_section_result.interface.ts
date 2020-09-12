export default interface ElectionResultSectionsResults {
  party_ballot: number
  party_name: string
  candidate_name: string
  total_voters: number
  voters_by_signature: number
  ballots_in_box: number
  valid_ballots_in_box: number
  invalid_ballots_in_box: number
  no_one: number
  valid_votes: number
  invalid_votes: number
  ballot_number: number
  percent: number
}
