//
//  GetUserUseCase.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import RxSwift
import CleanArchKit

struct GetUserUseCase: BaseUseCase {
    
    var userAPI: UserRepository!
    
    func execute(params: Any?) -> Single<UserDomain> {
        userAPI.getUser()
            .map(UserMapper.mapToDomain)
    }
    
}
