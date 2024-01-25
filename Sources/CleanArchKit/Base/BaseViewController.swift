//
//  BaseViewController.swift
//  CleanArchKit
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation
import UIKit

open class BaseViewController<T: ViewModelProtocol>: UIViewController, ViewControllerProtocol, DIProtocol  {
    
    /**
     * View model of the view controler
     */
    public var viewModel:T!
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        initViewModel()
    }
    
    required public init(coder: NSCoder) {
        super.init(coder: coder)!
        initViewModel()
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupBindings()
        setupObservers()
        viewModel.setup()
        viewModel.exeUseCase()
        viewModel.observers()
    }
    
    private func initViewModel() {
        viewModel = T(viewController: self)
        if(self.conforms(to: DIProtocol.self) && self.responds(to: #selector(DIProtocol.di))) {
            self.perform(#selector(DIProtocol.di))
        }
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

    
    deinit {
        print("deinit ViewController - \(Self.debugDescription())")
    }
    
}
