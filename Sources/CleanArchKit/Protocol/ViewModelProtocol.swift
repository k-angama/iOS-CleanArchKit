//
//  ViewModelProtocol.swift
//  CleanArchKit
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation
import UIKit

public protocol InputProtocol {
    init()
}

public protocol OutputProtocol {
    init()
}

public protocol TransformProtocol {
    associatedtype Input
    associatedtype Output
    var input: Input { get }
    var output: Output { get }
}

public protocol ViewModelProtocol: TransformProtocol {
    associatedtype T
    
    var router: T { get }
    
    func setup()
    func exeUseCase()
    func observers()
    
    init(viewController: UIViewController?)
}
