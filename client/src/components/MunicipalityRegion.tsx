import React from 'react'
import gql from 'graphql-tag'
import { useQuery } from '@apollo/client'

const MUNICIPALITY_REGION = gql`
  query municipalityRegions($municipalityId: string) {
    municipalityRegions(municipalityId: $municipalityId) @rest(path: "/regions/{args.municipalityId}", type: "municipalityRegion") {
      id
      name
    }
  }
`

type MunicipalityRegion = {
  id: number
  name: string
}

export default function MunicipalityRegion(props: { municipalityRegionId: number; municipalityId: number; onClick: Function }) {
  const { data, loading } = useQuery<{ municipalityRegions: MunicipalityRegion[] }, { municipalityId: number }>(MUNICIPALITY_REGION, {
    variables: { municipalityId: props.municipalityId },
  })

  if (loading) return <h1>Loading</h1>

  return (
    <div className="py-6">
      {data?.municipalityRegions?.map(municipalityRegion => (
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
            {municipalityRegion.name}
          </span>
        </span>
      ))}
    </div>
  )
}
