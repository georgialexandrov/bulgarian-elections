import React, { useState } from 'react'
import gql from 'graphql-tag'
import { useHistory, useParams } from 'react-router-dom'
import { useQuery } from '@apollo/client'
import Dropdown from '../components/Dropdown'

const ELECTIONS = gql`
  query elections {
    elections @rest(type: "Election", path: "elections") {
      id
      name
    }
  }
`

type Election = {
  id: number
  name: string
}

export default function Elections() {
  const { data, loading } = useQuery<{ elections: Election[] }>(ELECTIONS)
  let history = useHistory()
  let { electionType, electionId } = useParams()

  if (loading || !data) return <h1>Loading</h1>

  return (
    <>
      <h1>
        {electionType} {electionId}
      </h1>
      <Dropdown
        elements={data.elections}
        selectedValue={electionId || 0}
        onChange={(selected: number) => history.push(`/elections/${selected}`)}
        title="Избори"
      />
    </>
  )
}
