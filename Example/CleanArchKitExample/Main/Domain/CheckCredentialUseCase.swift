//
//  CheckCredentialUseCase.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import RxSwift
import CleanArchKit

struct CheckCredentialUseCase: BaseUseCase {
    
    var loginAPI: RegistrationRepository!

    func execute(params: (email: String, password: String)) -> Single<LogInResponseDomain>  {
        loginAPI.logIn(email: params.email, password: params.password)
            .map(LogInMapper.mapToEntity)
    }
    
}
