//
//  RegistrationAPIMock.swift
//  CleanArchKitExampleTests
//
//  Created by Karim Angama on 21/04/2023.
//

import Foundation
import RxSwift
@testable import CleanArchKitExample

struct RegistrationAPIMock: RegistrationRepository {
    
    var entity: LogInResponseRaw
    
    init(entity: LogInResponseRaw) {
        self.entity = entity
    }
    
    func logIn(email: String, password: String) -> Single<LogInResponseRaw> {
        Single.just(
            self.entity
        )
    }
    
    
}

