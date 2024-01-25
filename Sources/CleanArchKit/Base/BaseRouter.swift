//
//  BaseRouter.swift
//  CleanArchKit
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation
import UIKit

/// Implement the required methods in your Router (MyRouter in this example) for managing navigation between screens
///
///
/// ```swift
/// class MyRouter: BaseRouter<MyRoute> {
///
///     // Transition between screens
///     override func transition(route: MyRoute) {
///         // Handle navigation between screens here
///     }
///
///     // ...
/// }
/// ```
open class BaseRouter<T: Route>: Router {

    // MARK: - Public Properties
    
    public typealias PrepareClosure = (_ segue: UIStoryboardSegue, _ sender: Any?) -> Void
    
    /// Current view controller
    weak public var viewController: UIViewController?
    
    
    // MARK: - Public Method
    
    /**
     Initializer
     
     - Parameters
        - viewController: Current view controller
     */
    required public init(viewController: UIViewController? = nil) {
        self.viewController = viewController
    }

    /**
     Transition between screens
        
     - Parameters
        - route: Enum
     */
    open func transition(route: T) {}
    
    /**
     Intercepts the prepare method of the viewController
     
     - Parameters
        - block: Prepare method closure. Returns segue storyboard and sender
     */
    open func prepare(block: @escaping PrepareClosure) {
        swizzleImplementation(blockPrepare: block)
    }
    
    
    // MARK: - Private Properties
    
    private func swizzleImplementation(blockPrepare: PrepareClosure?) {
        guard let vc = viewController,
              let aClass: AnyClass = object_getClass(vc) else { return }
        let selector = #selector(vc.prepare(for:sender:))
        let originalMethod = class_getInstanceMethod(aClass, selector)

        let block: @convention(block) (_ sender: Any?, _ segue: UIStoryboardSegue) -> Void = {sender, segue in
            blockPrepare?(segue, sender)
        }
        let types = method_getTypeEncoding(originalMethod!);
        class_replaceMethod(aClass, selector, imp_implementationWithBlock(unsafeBitCast(block, to: AnyObject.self)), types)
    }
    
    deinit {
        print("deinit Router - \(Self.self)")
    }
    
}
