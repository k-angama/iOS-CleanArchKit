//
//  LoginRepository.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import RxSwift

protocol RegistrationRepository {
    func logIn(email: String, password: String) -> Single<LogInResponseRaw>
}
