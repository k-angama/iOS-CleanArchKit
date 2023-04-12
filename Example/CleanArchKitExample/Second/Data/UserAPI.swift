//
//  UserAPI.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import RxSwift

struct UserAPI: UserRepository {
    
    func getUser() -> Single<UserRaw> {
        Single.just(
            UserRaw(firtName: "Dupont", lastName: "Éric", email: "dupont.eric@mail.com")
        )
        .delay(.seconds(3), scheduler: MainScheduler.instance)
    }
    
}
