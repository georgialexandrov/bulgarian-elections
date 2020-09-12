import { Entity, Column, JoinColumn, PrimaryGeneratedColumn, ManyToOne } from 'typeorm'

import Election from 'src/elections/election.entity'
import Section from './section.entity'

@Entity({ name: 'votes' })
export default class Vote {
  @PrimaryGeneratedColumn()
  id: number

  @ManyToOne(_ => Election)
  @JoinColumn({ name: 'election_id' })
  election: Election

  @Column()
  round: number

  @ManyToOne(_ => Section)
  @JoinColumn({ name: 'section_id' })
  section: Section

  @Column()
  ballot_number: number

  @Column()
  valid_votes: number

  @Column()
  invalid_votes: number

  @Column()
  machine_voting: boolean
}
