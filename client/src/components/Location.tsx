import React from 'react'
import gql from 'graphql-tag'
import { useQuery } from '@apollo/client'

const LOCATIONS = gql`
  query locations($municipalityId: string) {
    locations(municipalityId: $municipalityId) @rest(path: "/locations/{args.municipalityId}", type: "location") {
      id
      name
    }
  }
`

type Location = {
  id: number
  name: string
}

export default function Location(props: { locationId: number; municipalityId: number; onClick: Function }) {
  const { data, loading } = useQuery<{ locations: Location[] }, { municipalityId: number }>(LOCATIONS, {
    variables: { municipalityId: props.municipalityId },
  })

  if (loading) return <h1>Loading</h1>

  return (
    <div className="py-6">
      {data?.locations?.map(location => (
        <span
          key={location.id}
          className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${(props.locationId == location.id && 'text-white') || 'text-black'}`}
        >
          <span aria-hidden className={`absolute inset-0 ${(props.locationId == location.id && 'bg-gray-900') || 'bg-gray-500'} rounded-full`}></span>
          <span className="relative cursor-pointer" onClick={() => props.onClick(location.id)}>
            {location.name}
          </span>
        </span>
      ))}
    </div>
  )
}
