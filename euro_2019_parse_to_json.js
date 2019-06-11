const parse = require('csv-parse');
const fs = require('fs');
const transform = require('./transformers');

function election_parse(input_file, transformer, output_file, aggregated = []) {
    fs.createReadStream(input_file).pipe(parse({delimiter: ';'}))
        .pipe(transformer)
        .on('data', function(row) { aggregated.push(row); })
        .on('end', function(){    
            fs.writeFile(output_file, JSON.stringify(aggregated), 'utf8', (err) => {
                if (err) throw err;
                console.log(`The file ${input_file} was successfully transformed and saved into ${output_file}!`);
            });
        })
}

data = [
    // { input: './euro_2019/cik_parties.txt', transformer: transform.cik_parties, output: './euro_2019/cik_parties.json' },
    // { input: './euro_2019/cik_candidates.txt', transformer: transform.candidate, output: './euro_2019/cik_candidates.json' },
    // { input: './euro_2019/sections.txt', transformer: transform.sections, output: './euro_2019/sections.json' },
    // { input: './euro_2019/preferences_mv.txt', transformer: transform.preferences, output: './euro_2019/preferences_mv.json' },
    // { input: './euro_2019/preferences.txt', transformer: transform.preferences, output: './euro_2019/preferences.json' },
    // { input: './euro_2019/protocols.txt', transformer: transform.protocols, output: './euro_2019/protocols.json' },
    // { input: './euro_2019/votes_mv.txt', transformer: transform.votes, output: './euro_2019/votes_mv.json' },
    { input: './euro_2019/votes.txt', transformer: transform.votes, output: './euro_2019/votes.json' },
]

data.forEach(element => election_parse(element.input, element.transformer, element.output));
