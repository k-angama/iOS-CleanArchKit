//
//  BaseUseCase.swift
//  CleanArchKit
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation

/// Define your use cases by creating classes conforming to the UseCase protocol
///
/// ```swift
///
/// struct MyUseCase: UseCase {
///     func execute(params: String) -> Bool {
///         // Implement your logic here
///     }
/// }
///
/// ```
public protocol BaseUseCase {
    
    associatedtype Input
    associatedtype OutPut
    
    func execute(params: Input) -> OutPut
}
