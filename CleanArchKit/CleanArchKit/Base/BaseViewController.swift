//
//  BaseViewController.swift
//  CleanArchKit
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation
import UIKit
import RxSwift

open class BaseViewController<T: ViewModelProtocol>: UIViewController, ViewControllerProtocol, DIProtocol  {
    
    /**
     * View model of the view controler
     */
    public var viewModel:T!
    
    /**
     * This returns ARC (RAII) like resource management to `RxSwift`.
     */
    public var disposeBag = DisposeBag()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = T(viewController: self)
        if(self.conforms(to: DIProtocol.self) && self.responds(to: #selector(DIProtocol.di))) {
            self.perform(#selector(DIProtocol.di))
        }
        setupUI()
        setupBindings()
        setupObservers()
        viewModel.setup()
        viewModel.exeUseCase()
        viewModel.observers()
    }
    
    /**
     * Set data binding in the view controller
     */
    open func setupBindings() {}
    
    /**
     * Set Observers in the view controller
     */
    open func setupObservers() {}
    
    /**
     * Manage user interface here
     */
    open func setupUI() {}
    
}
