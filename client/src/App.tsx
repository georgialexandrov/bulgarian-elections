import React from 'react'
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom'
import { ApolloProvider, ApolloClient, ApolloCache } from '@apollo/client'
import { InMemoryCache, NormalizedCacheObject } from 'apollo-cache-inmemory'
import { RestLink } from 'apollo-link-rest'
import Header from './components/Header'
import About from './pages/About'
import CommingSoon from './pages/ComingSoon'
import Sections from './pages/Sections'
import Elections from './pages/Elections'

export default function App() {
  const restLink = new RestLink({ uri: 'http://localhost:3000/api/' })
  const client = new ApolloClient({
    link: restLink,
    cache: (new InMemoryCache() as unknown) as ApolloCache<NormalizedCacheObject>,
  })

  return (
    <ApolloProvider client={client}>
      <Router>
        <div className="flex flex-col h-screen">
          <Header siteTitle="Hello" />

          <main className="flex-1 p-5">
            <Switch>
              <Route path="/elections/:electionType?/:electionId?/:districtId?/:municipalityId?/:round?">
                <Elections />
              </Route>
              <Route path="/coming-soon">
                <CommingSoon />
              </Route>
              <Route path="/about">
                <About />
              </Route>
              <Route path="/sections">
                <Sections />
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
