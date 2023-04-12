//
//  LoginAPI.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import RxSwift

struct RegistrationAPI: RegistrationRepository {

    func logIn(email: String, password: String) -> Single<LogInResponseRaw> {
        Single.just(
            LogInResponseRaw(userId: "1")
        ).delay(.seconds(4), scheduler: MainScheduler.instance)
    }
    
}
