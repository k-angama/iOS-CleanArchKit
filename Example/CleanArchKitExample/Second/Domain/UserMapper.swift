//
//  UserMapper.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import CleanArchKit

struct UserMapper: MapperToDomainEntity {
    
    static func mapToDomain(type: UserRaw) -> UserDomain {
        UserDomain(
            firtName: type.firtName ?? "-",
            lastName: type.lastName ?? "-",
            email: type.email ?? "-"
        )
    }
    
}
