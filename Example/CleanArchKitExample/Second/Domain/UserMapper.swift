//
//  UserMapper.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import CleanArchKit

struct UserMapper: MapperToEntity {
    
    static func mapToEntity(type: UserRaw) -> UserDomain {
        UserDomain(
            firtName: type.firtName ?? "-",
            lastName: type.lastName ?? "-",
            email: type.email ?? "-"
        )
    }
    
}
