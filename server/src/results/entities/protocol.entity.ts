import { Entity, Column, JoinColumn, PrimaryGeneratedColumn, ManyToOne } from 'typeorm'

import Election from 'src/elections/election.entity'
import Section from './section.entity'

@Entity({ name: 'candidates' })
export default class Candidate {
  @PrimaryGeneratedColumn()
  id: number

  @ManyToOne(_ => Election)
  @JoinColumn({ name: 'election_id' })
  election: Election

  @ManyToOne(_ => Section)
  @JoinColumn({ name: 'section_id' })
  section: Section

  @Column()
  round: number

  @Column()
  section_type: number

  @Column()
  total_voters: string

  @Column()
  voters_by_signature: string

  @Column()
  ballots_in_box: string

  @Column()
  invalid_ballots_in_box: string

  @Column()
  valid_ballots_in_box: string

  @Column()
  no_one: string

  @Column()
  machine_voting: boolean
}
