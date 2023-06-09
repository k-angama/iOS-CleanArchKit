//
//  UserRepository.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import RxSwift

protocol UserRepository {
    func getUser() -> Single<UserRaw>
}
