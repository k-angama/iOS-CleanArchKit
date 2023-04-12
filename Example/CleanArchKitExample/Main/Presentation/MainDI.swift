//
//  MainDI.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation

extension MainViewController {
    @objc func di() {
        self.viewModel.input.checkCredentialUseCase = CheckCredentialUseCase(loginAPI: RegistrationAPI())
        self.viewModel.input.checkValidEmailUseCase = CheckValidEmailUseCase()
    }
}
