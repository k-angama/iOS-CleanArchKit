//
//  SecondDI.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation

extension SecondViewController {
    @objc func di() {
        viewModel.input.getUser = GetUserUseCase(userAPI: UserAPI())
    }
}
