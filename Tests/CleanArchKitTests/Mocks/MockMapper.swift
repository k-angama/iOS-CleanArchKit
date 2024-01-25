//
//  MockMapper.swift
//  CleanArchKitTests
//
//  Created by Karim Angama on 21/04/2023.
//

import Foundation
@testable import CleanArchKit

struct MockRaw: EntityRaw {
    let name: String?
    let email: String?
}

struct MockDomain: EntityDomain {
    let firstname: String
    let lastname: String
    let email: String
}

struct MockMapper: BaseMapper {
    
    static func mapToDomain(type: MockRaw) -> MockDomain {
        MockDomain(
            firstname: type.name?.components(separatedBy: " ").first ?? "",
            lastname: type.name?.components(separatedBy: " ").last ?? "",
            email: type.email ?? ""
        )
    }
    
    static func mapFromDomain(type: MockDomain) -> MockRaw {
        MockRaw(
            name: "\(type.firstname) \(type.lastname)",
            email: type.email
        )
    }
    
}
