import { Args, Resolver, Query } from '@nestjs/graphql'
import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'

import Election from './election.entity'

@Injectable()
@Resolver('elections')
export default class ElectionsService {
  constructor(
    @InjectRepository(Election)
    private electionsRepository: Repository<Election>,
  ) {}

  @Query(() => [Election], { name: 'elections' })
  findAll(): Promise<Election[]> {
    return this.electionsRepository.find()
  }

  @Query(() => Election, { name: 'election' })
  find(@Args('id') id: number): Promise<Election> {
    return this.electionsRepository.findOne({ id })
  }
}
