import React from 'react'
import gql from 'graphql-tag'
import { useHistory, useParams } from 'react-router-dom'
import { useQuery } from '@apollo/client'
import Dropdown from '../components/Dropdown'
import District from '../components/District'
import Municipality from '../components/Municipality'
import MayorMunicipalityResults from '../components/MayorMunicipality/Results'

const ELECTIONS = gql`
  {
    elections {
      id
      name
      type
    }
  }
`

type Election = {
  id: number
  name: string
  type: string
}

export default function CouncilElections() {
  const { electionId, districtId, municipalityId, round } = useParams()

  const { data, loading } = useQuery<{ elections: Election[] }>(ELECTIONS)
  const history = useHistory()

  if (loading || !data || !data.elections) return <h1>Loading</h1>

  const redirect = (electionId: number) => {
    const selectedElectionType = data.elections.find(election => election.id === electionId)
    history.push(`/elections/${selectedElectionType?.type}/${electionId}`)
  }
  const setDistrict = (districtId: number) => history.push(`/elections/mc/${electionId}/${districtId}`)
  const setMunicipality = (municipalityId: number) => history.push(`/elections/mc/${electionId}/${districtId}/${municipalityId}`)

  return (
    <>
      <Dropdown elements={data.elections} selectedValue={electionId || 0} onChange={(selected: number) => redirect(selected)} title="Избори" />

      {electionId && <District onClick={setDistrict} districtId={districtId} electionId={electionId} />}
      {districtId && <Municipality onClick={setMunicipality} municipalityId={municipalityId} districtId={districtId} />}

      <h1>CouncilElections WIP</h1>

      {/* {municipalityId && (
        <MayorMunicipalityResults electionId={electionId} municipalityId={municipalityId} locationId={0} regionId={0} round={round || 1} />
      )} */}
    </>
  )
}
