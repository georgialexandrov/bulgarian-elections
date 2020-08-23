const express = require("express");
const app = express();
const port = 3000;
const queries = require('./queries')

app.get("/election_results", (req, res) => {
  console.log('election_results', req.query)
  return queries.election_results({
    election_id: req.query.election_id,
    municipality_id: req.query.municipality_id
  }).then((result) => res.send(result));
});


app.get("/elections", (req, res) => {
  console.log('elections', req.query)
  return queries.elections(req.query).then((result) => res.send(result));
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});