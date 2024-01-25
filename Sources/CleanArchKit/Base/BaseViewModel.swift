//
//  BaseViewModel.swift
//  CleanArchKit
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation
import UIKit

open class BaseViewModel<T: Router, Input: InputProtocol, Output: OutputProtocol>: NSObject,  ViewModelProtocol {
    
    public var input: Input
    
    public var output: Output
    
    private var _router: T
    public var router: T {
        guard !Thread.callStackSymbols.isEmpty &&
               Thread.callStackSymbols.count > 0
        else { return _router }
        let symbol = Thread.callStackSymbols[1]
        
        if symbol.contains("ViewController") {
            let message = "Router cannot be called in a viewController"
            #if DEBUG
            fatalError(message)
            #else
            print(message)
            #endif
        }
        return _router
    }
    
    required public init(viewController: UIViewController? = nil) {
        self.input = Input()
        self.output = Output()
        self._router = T(viewController: viewController)
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
    
    deinit {
        print("deinit ViewModel - \(Self.debugDescription())")
    }
    
}
