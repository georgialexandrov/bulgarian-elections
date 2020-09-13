import React from 'react'
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom'
import { ApolloProvider, ApolloClient, ApolloCache } from '@apollo/client'
import { InMemoryCache, NormalizedCacheObject } from 'apollo-cache-inmemory'
import Header from './components/Header'
import About from './pages/About'
import Elections from './pages/Elections'
import MayorMunicipalityElections from './pages/MayorMunicipalityElections'
import MayorElections from './pages/MayorElections'
import MayorMunicipalityRegionElections from './pages/MayorMunicipalityRegionElections'
import CouncilElections from './pages/CouncilElections'

export default function App() {
  const client = new ApolloClient({
    uri: 'http://localhost:8000/graphql',
    cache: (new InMemoryCache() as unknown) as ApolloCache<NormalizedCacheObject>,
  })

  return (
    <ApolloProvider client={client}>
      <Router>
        <div className="flex flex-col h-screen">
          <Header />

          <main className="flex-1 p-5">
            <Switch>
              <Route path="/elections/mm/:electionId?/:districtId?/:municipalityId?/:round?">
                <MayorMunicipalityElections />
              </Route>
              <Route path="/elections/m/:electionId?/:districtId?/:municipalityId?/:locationId?/:round?">
                <MayorElections />
              </Route>
              <Route path="/elections/mr/:electionId?/:districtId?/:municipalityId?/:regionId?/:round?">
                <MayorMunicipalityRegionElections />
              </Route>
              <Route path="/elections/mc/:electionId?/:districtId?/:municipalityId?/:round?">
                <CouncilElections />
              </Route>
              <Route path="/about">
                <About />
              </Route>
              <Route path="/">
                <Elections />
              </Route>
            </Switch>
          </main>

          <footer className="flex">
            <div className="bg-gray-900 text-white flex-auto p-5">
              <a href="https://github.com/georgialexandrov/bulgarian-elections" target="_blank" rel="noopener noreferrer">
                Проекта в GitHub
              </a>
            </div>
          </footer>
        </div>
      </Router>
    </ApolloProvider>
  )
}
