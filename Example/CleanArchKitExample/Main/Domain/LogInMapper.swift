//
//  LogInMapper.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import CleanArchKit

struct LogInMapper: MapperToEntity {
    
    static func mapToEntity(type: LogInResponseRaw) -> LogInResponseDomain {
        LogInResponseDomain(
            userId: type.userId ?? ""
        )
    }
    
}

