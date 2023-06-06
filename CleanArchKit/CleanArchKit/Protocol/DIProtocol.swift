//
//  DIProtocol.swift
//  CleanArchKit
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation

/// Implement dependency injection using the DIProtocol:
///
/// ```swift
///
/// extension MainViewController {
///     @objc func di() {
///         self.viewModel.input.checkCredentialUseCase = CheckCredentialUseCase(loginAPI: RegistrationAPI())
///         self.viewModel.input.checkValidEmailUseCase = CheckValidEmailUseCase()
///     }
/// }
///
/// ```
@objc public protocol DIProtocol {
    @objc optional func di()
}
