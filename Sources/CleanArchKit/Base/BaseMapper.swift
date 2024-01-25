//
//  BaseMapper.swift
//  CleanArchKit
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation

public protocol BaseMapper: MapperFromDomainEntity, MapperToDomainEntity {}

public protocol MapperFromDomainEntity {
    
    associatedtype A: EntityDomain
    associatedtype B: EntityRaw
    
    static func mapFromDomain(type: A) -> B
    
}

public protocol MapperToDomainEntity{
    
    associatedtype A: EntityDomain
    associatedtype B: EntityRaw
    
    static func mapToDomain(type: B) -> A
    
}

public protocol EntityRaw {}

public protocol EntityDomain {}
