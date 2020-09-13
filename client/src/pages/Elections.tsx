import React from 'react'
import gql from 'graphql-tag'
import { useHistory } from 'react-router-dom'
import { useQuery } from '@apollo/client'
import Dropdown from '../components/Dropdown'

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

export default function Elections() {
  const { data, loading } = useQuery<{ elections: Election[] }>(ELECTIONS)
  const history = useHistory()

  if (loading || !data || !data.elections) return <h1>Loading</h1>

  const redirect = (electionId: number) => {
    const selectedElectionType = data.elections.find(election => election.id === electionId)
    history.push(`/elections/${selectedElectionType?.type}/${electionId}`)
  }

  return <Dropdown elements={data.elections} selectedValue={0} onChange={(selected: number) => redirect(selected)} title="Избори" />
}
