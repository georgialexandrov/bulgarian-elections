import React, { useState, useEffect } from 'react'
import gql from 'graphql-tag'
import { useHistory, useParams } from 'react-router-dom'
import { useQuery } from '@apollo/client'
import Dropdown from '../components/Dropdown'
import District from '../components/District'
import Municipality from '../components/Municipality'
import MayorMunicipalityResults from '../components/MayorMunicipality/Results'

const ELECTIONS = gql`
  query elections {
    elections @rest(type: "Election", path: "elections") {
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

export default function Elections() {
  const { electionType, electionId, districtId, municipalityId, round } = useParams()

  const { data, loading } = useQuery<{ elections: Election[] }>(ELECTIONS)
  const history = useHistory()

  if (loading || !data) return <h1>Loading</h1>

  const redirect = (electionId: number) => {
    const selectedElectionType = data.elections.find(election => election.id === electionId)
    history.push(`/elections/${selectedElectionType?.type}/${electionId}`)
  }
  const setDistrict = (districtId: number) => history.push(`/elections/${electionType}/${electionId}/${districtId}`)
  const setMunicipality = (municipalityId: number) => history.push(`/elections/${electionType}/${electionId}/${districtId}/${municipalityId}`)

  return (
    <>
      <h1>
        type {electionType} id {electionId}
        district {districtId}
      </h1>
      <Dropdown elements={data.elections} selectedValue={electionId || 0} onChange={(selected: number) => redirect(selected)} title="Избори" />

      {electionId && <District onClick={setDistrict} districtId={districtId} electionId={electionId} />}
      {districtId && <Municipality onClick={setMunicipality} municipalityId={municipalityId} districtId={districtId} />}

      <Dropdown
        elements={[
          { id: 1, name: 'Тур I' },
          { id: 2, name: 'Тур II' },
        ]}
        selectedValue={round || 1}
        onChange={(newRound: number) => history.push(`/elections/${electionType}/${electionId}/${districtId}/${municipalityId}/${newRound}`)}
        title="Тур"
      />

      {municipalityId && <MayorMunicipalityResults electionId={electionId} municipalityId={municipalityId} round={round || 1} />}
    </>
  )
}
