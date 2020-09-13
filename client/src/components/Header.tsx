import React from 'react'
import { Link } from 'react-router-dom'

export default function Header() {
  return (
    <header style={{ marginBottom: `1.45rem` }}>
      <div className="flex items-center justify-between flex-wrap p-6">
        <div className="w-full block flex-grow lg:flex lg:items-center lg:w-auto">
          <div className="text-sm lg:flex-grow text-white">
            <Link to="/elections">Избори</Link>
            <Link to="/about">За проекта</Link>
          </div>
        </div>
      </div>
    </header>
  )
}
