import React from "react"
import { Link } from "gatsby"
import './header.module.css'

export default function Header({ siteTitle }: { siteTitle: string }) {
  return <header style={{marginBottom: `1.45rem`}}>

    <div className="flex items-center justify-between flex-wrap p-6" style={{margin: `0 auto`, maxWidth: 1200, padding: `1.45rem 1.0875rem`}}>
      <div className="w-full block flex-grow lg:flex lg:items-center lg:w-auto">
        <div className="text-sm lg:flex-grow text-white">
          <Link className="block mt-4 lg:inline-block lg:mt-0 text-teal-lighter hover:text-white mr-4" to="/">{siteTitle}</Link>
          <Link className="block mt-4 lg:inline-block lg:mt-0 text-teal-lighter hover:text-white mr-4" to="/elections">Избори</Link>
          <Link className="block mt-4 lg:inline-block lg:mt-0 text-teal-lighter hover:text-white mr-4" to="/about">За проекта</Link>
          <Link className="block mt-4 lg:inline-block lg:mt-0 text-teal-lighter hover:text-white mr-4" to="/sections">Избирателни секции</Link>
          <Link className="block mt-4 lg:inline-block lg:mt-0 text-teal-lighter hover:text-white mr-4" to="/coming-soon">Какво следва</Link>
        </div>
      </div>
    </div>
  </header>
}
