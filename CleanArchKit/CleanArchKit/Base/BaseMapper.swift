//
//  BaseMapper.swift
//  CleanArchKit
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation

public protocol BaseMapper: MapperFromEntity, MapperToEntity {}

public protocol MapperFromEntity {
    
    associatedtype A
    associatedtype B
    
    static func mapFromEntity(type: A) -> B
    
}

public protocol MapperToEntity{
    
    associatedtype A
    associatedtype B
    
    static func mapToEntity(type: B) -> A
    
}
