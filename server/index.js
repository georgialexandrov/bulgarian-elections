const express = require ('express');
const app = express ();
const port = 8000;
const queries = require ('./queries');

app.get ('/api/mayor_municipality_results', (req, res) => {
  return queries
    .mayor_municipality_results ({
      election_id: req.query.election_id,
      municipality_id: req.query.municipality_id,
      round: req.query.round,
    })
    .then (result => res.send (result));
});
app.get ('/api/mayor_municipality_region_results', (req, res) => {
  return queries
    .mayor_municipality_region_results ({
      election_id: req.query.election_id,
      municipality_id: req.query.municipality_id,
      regionId: req.query.region_id,
      round: req.query.round,
    })
    .then (result => res.send (result));
});

app.get('/api/districts/:election_id', (req, res) => {
  return queries.districts({ electionId: req.params.election_id }).then (result => res.send (result));
});

app.get('/api/locations/:municipality_id', (req, res) => {
  console.log(req.params)
  console.log('/api/locations/:municipality_id')
  return queries.locations({ municipalityId: req.params.municipality_id }).then (result => res.send (result));
});

app.get ('/api/sections', (req, res) => {
  return queries
    .sections ({
      election_id: req.query.election_id,
      municipality_id: req.query.municipality_id,
      round: req.query.round,
    })
    .then (result => res.send (result));
});

app.get ('/api/municipality_region_sections', (req, res) => {
  return queries
    .municipality_region_sections ({
      election_id: req.query.election_id,
      municipality_region_id: req.query.municipality_region_id,
      round: req.query.round,
    })
    .then (result => res.send (result));
});

app.get ('/api/mayor_municipality_section_result', (req, res) => {
  return queries
    .mayor_municipality_section_result ({
      election_id: req.query.election_id,
      municipality_id: req.query.municipality_id,
      round: req.query.round,
      lat: req.query.lat,
      lng: req.query.lng
    })
    .then (result => res.send (result));
});

app.get ('/api/mayor_municipality_region_section_result', (req, res) => {
  return queries
    .mayor_municipality_region_section_result ({
      election_id: req.query.election_id,
      municipality_region_id: req.query.municipality_region_id,
      round: req.query.round,
      lat: req.query.lat,
      lng: req.query.lng
    })
    .then (result => res.send (result));
});

app.get ('/api/municipalities/:district_id', (req, res) => {
  return queries
    .municipalities ({
      district_id: req.params.district_id,
    })
    .then (result => res.send (result));
});

app.get ('/api/regions/:municipalityId', (req, res) => {
  return queries
    .regions ({
      municipalityId: req.params.municipalityId,
    })
    .then (result => res.send (result));
});

app.get ('/api/elections', (req, res) => {
  return queries.elections (req.query).then (result => res.send (result));
});




app.get ('/api/municipality_sections', (req, res) => {
  return queries
    .municipality_sections ({
      election_id: req.query.election_id,
      location_id: req.query.location_id,
      round: req.query.round,
    })
    .then (result => res.send (result));
});


app.get ('/api/mayor_section_result', (req, res) => {
  return queries
    .mayor_section_result ({
      election_id: req.query.election_id,
      location_id: req.query.location_id,
      round: req.query.round,
      lat: req.query.lat,
      lng: req.query.lng
    })
    .then (result => res.send (result));
});

app.get ('/api/mayor_results', (req, res) => {
  return queries
    .mayor_results ({
      election_id: req.query.election_id,
      location_id: req.query.location_id,
      round: req.query.round,
    })
    .then (result => res.send (result));
});

app.get ('/api/council_party_result', (req, res) => {
  return queries
    .council_party_result ({
      electionId: req.query.election_id,
      municipalityId: req.query.municipality_id
    })
    .then (result => res.send (result));
});

app.get ('/api/council_preferences_result', (req, res) => {
  return queries
    .council_preferences_result ({
      electionId: req.query.election_id,
      municipalityId: req.query.municipality_id
    })
    .then (result => res.send (result));
});

app.listen (port, () => {
  console.log (`Example app listening at http://localhost:${port}`);
});
