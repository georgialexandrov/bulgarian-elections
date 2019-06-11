const parties = require('./euro_2019/cik_parties.json')
const sections = require('./euro_2019/sections.json')

const protocols = require('./euro_2019/protocols.json')
const votes = require('./euro_2019/votes.json')
const votes_mv = require('./euro_2019/votes_mv.json')

results_per_section = {}
protocols
.slice(0,20)
.forEach(protocol => {
    let section_info = sections.find(section => section.section_code == protocol.section_code)
    let total_voters = parseInt(protocol.total_voters_count)
    let votes_data = votes.find(section => section.section_code == protocol.section_code)
    let votes_machine = votes_mv.find(section => section.section_code == protocol.section_code)


    results_per_section[protocol.section_code] = {
        district: section_info.district,
        location: section_info.location,
        total_voters,
        voted_count: parseInt(protocol.voters_count_by_signature),
        turnout: protocol.voters_count_by_signature / total_voters * 100,
        parties_result: Object.keys(votes_data.parties).reduce((prev, party_number) => {
            prev[parties.find(p => p.number == party_number).name] = {
                valid: parseInt(votes_data.parties[party_number].valid) + parseInt(votes_machine.parties[party_number].valid),
                invalid: parseInt(votes_data.parties[party_number].invalid) + parseInt(votes_machine.parties[party_number].invalid)
            }

            return prev
        }, {})
    }
})

console.log( JSON.stringify(results_per_section, null, 2) );