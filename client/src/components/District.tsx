import React from 'react'
import gql from 'graphql-tag'
import { useQuery } from '@apollo/client'

const DISTRICTS = gql`
  query districts($electionId: ID!) {
    election_districts(electionId: $electionId) {
      id
      district_name
    }
  }
`

type District = {
  id: number
  district_name: string
}

export default function District(props: { districtId: number; electionId: number; onClick: Function }) {
  const { data, loading } = useQuery<{ election_districts: District[] }, { electionId: number }>(DISTRICTS, {
    variables: { electionId: props.electionId },
  })

  if (loading) return <h1>Loading</h1>

  return (
    <div className="py-6">
      {data?.election_districts?.map(district => (
        <span
          key={district.id}
          className={`mx-1 my-1 relative inline-block px-2 py-1 text-sm ${(props.districtId == district.id && 'text-white') || 'text-black'}`}
        >
          <span aria-hidden className={`absolute inset-0 ${(props.districtId == district.id && 'bg-gray-900') || 'bg-gray-500'} rounded-full`}></span>
          <span className="relative cursor-pointer" onClick={() => props.onClick(district.id)}>
            {district.district_name}
          </span>
        </span>
      ))}
    </div>
  )
}
