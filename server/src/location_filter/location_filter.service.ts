import { Args, Resolver, Query } from '@nestjs/graphql'
import { Injectable } from '@nestjs/common'
import { InjectRepository } from '@nestjs/typeorm'
import { Repository } from 'typeorm'

import District from './district.entity'
import Municipality from './municipality.entity'
import MunicipalityRegion from 'src/results/entities/municipality_region.entity'
import Location from 'src/results/entities/location.entity'

@Injectable()
@Resolver('districts')
export default class LocationFilterService {
  constructor(
    @InjectRepository(District)
    private districtsRepository: Repository<District>,
    @InjectRepository(Municipality)
    private municipalitiesRepository: Repository<Municipality>,
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

  findMunicipality(municipalityId): Promise<Municipality> {
    return this.municipalitiesRepository.findOne(municipalityId, { relations: ['locations', 'regions'] })
  }

  @Query(() => [Location], { name: 'municipality_locations' })
  async municipality_locations(@Args('municipalityId') municipalityId: number): Promise<Location[]> {
    return (await this.findMunicipality(municipalityId)).locations
  }

  @Query(() => [MunicipalityRegion], { name: 'municipality_regions' })
  async municipality_regions(@Args('municipalityId') municipalityId: number): Promise<MunicipalityRegion[]> {
    return (await this.findMunicipality(municipalityId)).regions
  }
}
