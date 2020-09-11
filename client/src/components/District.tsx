import React from 'react'
import gql from 'graphql-tag'
import { useQuery } from '@apollo/client'

const DISTRICTS = gql`
  query districts($electionId: string) {
    districts(electionId: $electionId) @rest(path: "/districts/{args.electionId}", type: "District") {
      id
      name
    }
  }
`

type District = {
  id: number
  name: string
}

export default function District(props: { districtId: number; electionId: number; onClick: Function }) {
  const { data, loading } = useQuery<{ districts: District[] }, { electionId: number }>(DISTRICTS, { variables: { electionId: props.electionId } })

  if (loading) return <h1>Loading</h1>

  return (
    <div className="py-6">
      {data?.districts?.map(district => (
        <span
          key={district.id}
          className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${(props.districtId == district.id && 'text-white') || 'text-black'}`}
        >
          <span aria-hidden className={`absolute inset-0 ${(props.districtId == district.id && 'bg-gray-900') || 'bg-gray-500'} rounded-full`}></span>
          <span className="relative cursor-pointer" onClick={() => props.onClick(district.id)}>
            {district.name}
          </span>
        </span>
      ))}
    </div>
  )
}
