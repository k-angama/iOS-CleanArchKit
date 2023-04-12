//
//  BaseViewModel.swift
//  CleanArchKit
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation
import RxSwift

open class BaseViewModel<T: Router, Input: InputProtocol, Output: OutputProtocol>: NSObject,  ViewModelProtocol {
    
    public var input: Input
    
    public var output: Output
    
    public let router: T
    
    /**
     * This returns ARC (RAII) like resource management to `RxSwift`.
     */
    public let disposeBag = DisposeBag()
    
    required public init(viewController: UIViewController? = nil) {
        self.input = Input()
        self.output = Output()
        self.router = T(viewController: viewController)
    }
    
    /**
     * Add setup
     */
    open func setup() {}
    
    /**
     * Add use case observable  in the function
     */
    open func exeUseCase() {}
    
    /**
     * Add Observers
     */
    open func observers() {}
    
}
