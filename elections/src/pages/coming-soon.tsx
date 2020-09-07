import React, { useState, useEffect } from "react"
import Layout from "../layout/layout"
import SEO from "../components/seo"

export default function CommingSoonPage() {
  return (
    <Layout>
      <SEO title="Какво следва" />

      <h1>Какво следва</h1>

      <ul>
        <li>Секциите с грешни координати да се коригират</li>
        <li>Кварталите в градовете да се коригират</li>
      </ul>
    </Layout>
  )
}
