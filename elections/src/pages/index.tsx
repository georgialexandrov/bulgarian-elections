import React, { useState, useEffect } from "react"
// import { Link } from "gatsby"

import Layout from "../components/layout"
// import Image from "../components/image"
import SEO from "../components/seo"
import fetch from "node-fetch"

const IndexPage = () => {
  const [elections, setElections] = useState([])
  const [election, setElection] = useState({})
  const [districts, setDistricts] = useState([])
  const [district, setDistrict] = useState({})
  const [municipalities, setMunicipalities] = useState([])
  const [municipality, setMunicipality] = useState({})
  const [results, setResults] = useState([])

  useEffect(() => {
    fetch(`/api/elections`)
      .then(response => response.json()) // parse JSON from request
      .then(resultData => {
        setElection(resultData[0].id)
        setElections(resultData)
      })
  }, [])

  useEffect(() => {
    fetch(`/api/districts`)
      .then(response => response.json()) // parse JSON from request
      .then(resultData => {
        setDistricts(resultData)
      })
  }, [])

  useEffect(() => {
    fetch(`/api/municipalities/${district}`)
      .then(response => response.json()) // parse JSON from request
      .then(resultData => {
        setMunicipality(resultData[0].id)
        setMunicipalities(resultData)
      })
  }, [district])

  useEffect(() => {
    fetch(
      `/api/election_results?election_id=${election}&municipality_id=${municipality}`
    )
      .then(response => response.json()) // parse JSON from request
      .then(resultData => {
        setResults(resultData)
      })
  }, [municipality])

  return (
    <Layout>
      <SEO title="Home" />
      <h1>Hi people</h1>
      <div>
        <select onChange={event => setElection(event.target.value)}>
          {elections.map((election: { id: number; name: string }) => (
            <option key={election.id} value={election.id}>
              {election.name}
            </option>
          ))}
        </select>
      </div>

      <div>
        <select
          onChange={event => {
            setDistrict(event?.target?.value)
          }}
        >
          {districts.map((district: { id: number; district_name: string }) => (
            <option key={district.id} defaultValue={""} value={district.id}>
              {district.district_name}
            </option>
          ))}
        </select>
      </div>
      <div>
        <select onChange={event => setMunicipality(event.target.value)}>
          {municipalities.map(
            (municipality: { id: number; municipality_name: string }) => (
              <option key={municipality.id} value={municipality.id}>
                {municipality.municipality_name}
              </option>
            )
          )}
        </select>
      </div>
      <table>
        {results.map(
          (result: {
            candidate_name: string
            valid_votes: number
            invalid_votes: number
            ballot_number: number
          }) => (
            <tr>
              <td>{result.candidate_name}</td>
              <td>{result.valid_votes}</td>
              <td>{result.invalid_votes}</td>
              <td>{result.ballot_number}</td>
            </tr>
          )
        )}
      </table>
    </Layout>
  )
}

export default IndexPage

{
  /* <div style={{ maxWidth: `300px`, marginBottom: `1.45rem` }}>
        <Image />
      </div>
      <Link to="/page-2/">Go to page 2</Link> <br />
      <Link to="/using-typescript/">Go to "Using TypeScript"</Link> */
}
