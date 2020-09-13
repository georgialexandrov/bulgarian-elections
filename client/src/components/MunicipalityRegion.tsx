import React from 'react'
import gql from 'graphql-tag'
import { useQuery } from '@apollo/client'

const MUNICIPALITY_REGION = gql`
  query municipalityRegions($municipalityId: ID!) {
    municipality_regions(municipalityId: $municipalityId) {
      id
      region_name
    }
  }
`

type MunicipalityRegion = {
  id: number
  region_name: string
}

export default function MunicipalityRegion(props: { municipalityRegionId: number; municipalityId: number; onClick: Function }) {
  const { data, loading } = useQuery<{ municipality_regions: MunicipalityRegion[] }, { municipalityId: number }>(MUNICIPALITY_REGION, {
    variables: { municipalityId: props.municipalityId },
  })

  if (loading) return <h1>Loading</h1>
  if (!data) return <h1>No data</h1>
  return (
    <div className="py-6">
      {data?.municipality_regions?.map(municipalityRegion => (
        <span
          key={municipalityRegion.id}
          className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${
            (props.municipalityRegionId == municipalityRegion.id && 'text-white') || 'text-black'
          }`}
        >
          <span
            aria-hidden
            className={`absolute inset-0 ${(props.municipalityRegionId == municipalityRegion.id && 'bg-gray-900') || 'bg-gray-500'} rounded-full`}
          ></span>
          <span className="relative cursor-pointer" onClick={() => props.onClick(municipalityRegion.id)}>
            {municipalityRegion.region_name}
          </span>
        </span>
      ))}
    </div>
  )
}
