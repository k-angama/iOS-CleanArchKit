//
//  BaseRouter.swift
//  CleanArchKit
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation
import UIKit

open class BaseRouter<T: Route>: Router {

    /**
     * Current view controller
     */
    weak public var viewController: UIViewController?
    
    /**
     * Initializer
     *
     * @param  current view controller
     */
    required public init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }

    open func transition(route: T) {}
    
    deinit {
        print("deinit Router - \(Self.self)")
    }
}
