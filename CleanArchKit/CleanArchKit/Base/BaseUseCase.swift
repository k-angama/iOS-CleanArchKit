//
//  BaseUseCase.swift
//  CleanArchKit
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation

public protocol BaseUseCase {
    
    associatedtype Input
    associatedtype OutPut
    
    func execute(params: Input) -> OutPut
}
