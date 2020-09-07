import React, { useState, useEffect } from "react"
import { Router, Link } from "@reach/router"
import Layout from "../layout/layout"
import SEO from "../components/seo"
import Election from "../components/elections"
import District from "../components/districts"
import Municipality from "../components/municipality"
import Location from "../components/location"
import Results from "../components/results/mayor_municipality"
import MunicipalityRegionResult from "../components/results/mayor_municipality_region"
import LocationResult from "../components/results/location_result"
import CouncilResults from "../components/results/council_result"
import MunicipalityRegion from "../components/municipalityRegion"
import Dropdown from "../components/dropdown"
import { navigate } from "gatsby"

type ElectionItem = {
  id: number
  name: string
  type: string
}

type DistrictItem = {
  id: number
  name: string
}

export default function ElectionsPage(props: { electionId?: number }) {
  const [elections, setElections] = useState([] as ElectionItem[])
  const [electionType, setElectionType] = useState("")
  const [selectedElection, setSelectedElection] = useState(0)
  const [districts, setDistricts] = useState([] as DistrictItem[])
  const [selectedDistrict, setSelectedDistrict] = useState(0)
  const [municipalities, setMunicipalities] = useState([] as DistrictItem[])
  const [selectedMunicipality, setSelectedMunicipality] = useState(0)
  const [regions, setRegions] = useState([] as DistrictItem[])
  const [selectedRegion, setSelectedRegion] = useState(0)
  const [locations, setLocations] = useState([] as ElectionItem[])
  const [selectedLocation, setSelectedLocation] = useState(0)

  useEffect(() => {
    fetch(`/api/elections`)
      .then(response => response.json())
      .then(resultData => {
        setElectionType(resultData[0].type)
        setSelectedElection(resultData[0].id)
        setElections(resultData)
      })
  }, [])

  useEffect(() => {
    selectedElection != 0 &&
      fetch(`/api/districts/${selectedElection}`)
        .then(response => response.json())
        .then(resultData => {
          setSelectedDistrict(resultData[0].id)
          setDistricts(resultData)
        })
  }, [selectedElection])

  useEffect(() => {
    selectedDistrict != 0 &&
      fetch(`/api/municipalities/${selectedDistrict}`)
        .then(response => response.json())
        .then(resultData => {
          setSelectedMunicipality(resultData[0].id)
          setMunicipalities(resultData)
        })
  }, [selectedElection, selectedDistrict])

  useEffect(() => {
    selectedMunicipality != 0 &&
      fetch(`/api/regions/${selectedMunicipality}`)
        .then(response => response.json())
        .then(resultData => {
          setRegions(resultData)
        })
  }, [selectedMunicipality])

  useEffect(() => {
    fetch(`/api/locations/${selectedMunicipality}`)
      .then(response => response.json())
      .then(resultData => {
        setLocations(resultData)
      })
  }, [selectedMunicipality])

  const redirect = (selected: number) => {
    const election = elections.find(e => e.id == selected)
    setSelectedElection(selected)
    setElectionType(election?.type || "")
    // navigate(`/elections/${election?.type}/${selected}`)
  }

  return (
    <Layout>
      <SEO title="Избори" />
      <Dropdown
        elements={elections}
        selectedValue={selectedElection || 0}
        onChange={(selected: number) => redirect(selected)}
        title="Избори"
      />
      <div className="py-6">
        {districts.map(district => (
          <span
            key={district.id}
            className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${
              (selectedDistrict == district.id && "text-white") || "text-black"
            }`}
          >
            <span
              aria-hidden
              className={`absolute inset-0 ${
                (selectedDistrict == district.id && "bg-gray-900") ||
                "bg-gray-500"
              } rounded-full`}
            ></span>
            <span className="relative cursor-pointer">
              {/* <Link to={`/elections/${electionType}/${selectedElection}/${district.id}`}>{district.name}</Link> */}
              <a onClick={() => setSelectedDistrict(district.id)}>
                {district.name}
              </a>
            </span>
          </span>
        ))}
      </div>
      <div className="py-6">
        {municipalities.map(municipality => (
          <span
            key={municipality.id}
            className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${
              (selectedMunicipality == municipality.id && "text-white") ||
              "text-black"
            }`}
          >
            <span
              aria-hidden
              className={`absolute inset-0 ${
                (selectedMunicipality == municipality.id && "bg-gray-900") ||
                "bg-gray-500"
              } rounded-full`}
            ></span>
            <span className="relative cursor-pointer">
              {/* <Link to={`/elections/${electionType}/${props.electionId}/${selectedDistrict}/${municipality.id}`}>{municipality.name}</Link> */}
              <a onClick={() => setSelectedMunicipality(municipality.id)}>
                {municipality.name}
              </a>
            </span>
          </span>
        ))}
      </div>
      {electionType == "mr" && (
        <div className="py-6">
          {regions.map(region => (
            <span
              key={region.id}
              className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${
                (selectedRegion == region.id && "text-white") || "text-black"
              }`}
            >
              <span
                aria-hidden
                className={`absolute inset-0 ${
                  (selectedRegion == region.id && "bg-gray-900") ||
                  "bg-gray-500"
                } rounded-full`}
              ></span>
              <span className="relative cursor-pointer">
                {/* <Link to={`/elections/mr/${props.electionId}/${props.districtId}/${props.municipalityId}/${region.id}/1`}>{region.name}</Link> */}
                <a onClick={() => setSelectedRegion(region.id)}>
                  {region.name}
                </a>
              </span>
            </span>
          ))}
        </div>
      )}
      election type {electionType}
      {electionType == "m" && (
        <div className="py-6">
          {locations.map(location => (
            <span
              key={location.id}
              className={`mx-1 my-1 relative inline-block px-3 py-1 font-semibold ${
                (selectedLocation == location.id && "text-white") ||
                "text-black"
              }`}
            >
              <span
                aria-hidden
                className={`absolute inset-0 ${
                  (selectedLocation == location.id && "bg-gray-900") ||
                  "bg-gray-500"
                } rounded-full`}
                text-black
              ></span>
              <span className="relative cursor-pointer">
                {/* <Link to={`/elections/m/${props.electionId}/${props.districtId}/${props.municipalityId}/${location.id}`}>{location.name}</Link> */}
                <a onClick={() => setSelectedLocation(location.id)}>
                  {location.name}
                </a>
              </span>
            </span>
          ))}
        </div>
      )}
      {/* <Router className="text-left">
        <MunicipalityRegion path="elections/mr/:electionId/:districtId/:municipalityId" />
        <MunicipalityRegionResult path="elections/mr/:electionId/:districtId/:municipalityId/:regionId/:round" />

        <Location path="elections/m/:electionId/:districtId/:municipalityId" />
        <LocationResult path="elections/m/:electionId/:districtId/:municipalityId/:locationId/:round" />
        <LocationResult path="elections/m/:electionId/:districtId/:municipalityId/:locationId" />

        <CouncilResults path="elections/mc/:electionId/:districtId/:municipalityId" />
        <Results path="elections/:electionType/:electionId/:districtId/:municipalityId/:round" />
        <Results path="elections/:electionType/:electionId/:districtId/:municipalityId" />
        <Municipality path="elections/:electionType/:electionId/:districtId" />
        <District path="elections/:electionType/:electionId" />
        <Election path="elections" />
      </Router> */}
    </Layout>
  )
}
