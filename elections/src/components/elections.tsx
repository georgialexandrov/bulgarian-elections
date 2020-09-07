import React, { useEffect, useState } from "react"
import { navigate } from "@reach/router"
import Dropdown from "./dropdown"

type ElectionItem = {
  id: number
  name: string
  type: string
}

export default function Election(props: {electionId?: number}) {
  const [elections, setElections] = useState([] as ElectionItem[])

  useEffect(() => {
    fetch(`/api/elections`)
      .then(response => response.json())
      .then(resultData => setElections(resultData))
  }, [])

  const redirect = (selected: number) => {
    const election = elections.find(e => e.id==selected)
    navigate(`/elections/${election?.type}/${selected}`)
  }
  return <Dropdown elements={elections} selectedValue={props.electionId || 0} onChange={(selected: number) => redirect(selected)} title="Избори" />
}
