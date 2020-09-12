export default interface ElectionResult {
  id: number
  lat: number
  lng: number
  cik_address: string
  address: string
  section_codes: string
  total_voters: number
  voters_by_signature: number
  ballots_in_box: number
  valid_ballots_in_box: number
  invalid_ballots_in_box: number
  no_one: number
}
