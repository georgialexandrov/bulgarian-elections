import { Args, Resolver, Query } from '@nestjs/graphql'
import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'

import District from './district.entity'
import Municipality from 'src/municipality/municipality.entity'

@Injectable()
@Resolver('districts')
export default class DistrictsService {
  constructor(
    @InjectRepository(District)
    private districtsRepository: Repository<District>,
  ) {}

  @Query(() => [District], { name: 'districts' })
  findAll(): Promise<District[]> {
    return this.districtsRepository.find()
  }

  @Query(() => District, { name: 'district' })
  find(@Args('id') id: number): Promise<District> {
    return this.districtsRepository.findOne({
      where: { id },
      relations: ['municipalities'],
    })
  }

  @Query(() => [District], { name: 'election_districts' })
  election_districts(@Args('electionId') electionId: number): Promise<District[]> {
    return this.districtsRepository.find()
  }

  @Query(() => [Municipality], { name: 'district_municipalities' })
  async district_municipalities(@Args('districtId') districtId: number): Promise<Municipality[]> {
    return (await this.find(districtId)).municipalities
  }
}
