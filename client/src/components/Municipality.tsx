import React from 'react'
import gql from 'graphql-tag'
import { useQuery } from '@apollo/client'

const MUNICIPALITY = gql`
  query municipalities($districtId: string) {
    municipalities(districtId: $districtId) @rest(path: "/municipalities/{args.districtId}", type: "District") {
      id
      name
    }
  }
`

type District = {
  id: number
  name: string
}

export default function Municipality(props: { municipalityId: number; districtId: number; onClick: Function }) {
  const { data, loading } = useQuery<{ municipalities: District[] }, { districtId: number }>(MUNICIPALITY, {
    variables: { districtId: props.districtId },
  })

  if (loading) return <h1>Loading</h1>

  return (
    <div className="py-6">
      {data?.municipalities?.map(municipality => (
        <span
          key={municipality.id}
          className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${
            (props.municipalityId == municipality.id && 'text-white') || 'text-black'
          }`}
        >
          <span
            aria-hidden
            className={`absolute inset-0 ${(props.municipalityId == municipality.id && 'bg-gray-900') || 'bg-gray-500'} rounded-full`}
          ></span>
          <span className="relative cursor-pointer" onClick={() => props.onClick(municipality.id)}>
            {municipality.name}
          </span>
        </span>
      ))}
    </div>
  )
}
