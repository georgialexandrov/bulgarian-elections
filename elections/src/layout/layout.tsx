/**
 * Layout component that queries for data
 * with Gatsby's useStaticQuery component
 *
 * See: https://www.gatsbyjs.org/docs/use-static-query/
 */

import React from "react"
import { useStaticQuery, graphql } from "gatsby"

import Header from "../components/header"
import "./layout.module.css"

export default function Layout({ children }: {children: React.ReactChild[]}) {
  const data = useStaticQuery(graphql`
    query SiteTitleQuery {
      site {
        siteMetadata {
          title
        }
      }
    }
  `)

  return (
    <div className="flex flex-col h-screen">
      <Header siteTitle={data.site.siteMetadata.title} />

      <main style={{margin: `0 auto`, maxWidth: 1200, padding: `0 1.0875rem 1.45rem`}} className="flex-1 p-5">{children}</main>

      <footer className="flex">
        <div className="bg-gray-900 text-white flex-auto p-5"><a href="https://github.com/georgialexandrov/bulgarian-elections" target="_top">Проекта в GitHub</a></div>
        <div className="bg-gray-900 text-white flex-auto p-5 text-right">Създадено с ❤️ към отворените данни</div>
      </footer>
    </div>
  )
}
