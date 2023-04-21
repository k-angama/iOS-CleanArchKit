//
//  LogInMapper.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import CleanArchKit

struct LogInMapper: MapperToDomainEntity {
    
    static func mapToDomain(type: LogInResponseRaw) -> LogInResponseDomain {
        LogInResponseDomain(
            userId: type.userId ?? ""
        )
    }
    
}

