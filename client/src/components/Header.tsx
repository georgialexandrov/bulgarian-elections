import React from 'react'
import { Link } from 'react-router-dom'

export default function Header({ siteTitle }: { siteTitle: string }) {
  return (
    <header style={{ marginBottom: `1.45rem` }}>
      <div className="flex items-center justify-between flex-wrap p-6">
        <div className="w-full block flex-grow lg:flex lg:items-center lg:w-auto">
          <div className="text-sm lg:flex-grow text-white">
            <Link to="/">{siteTitle}</Link>
            <Link to="/elections">Избори</Link>
            <Link to="/about">За проекта</Link>
            <Link to="/sections">Избирателни секции</Link>
            <Link to="/coming-soon">Какво следва</Link>
          </div>
        </div>
      </div>
    </header>
  )
}
