//
//  Router.swift
//  CleanArchKit
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation
import UIKit

/// Route for describes which routes can be triggered.
/// 
public protocol Route { }

public protocol Router: AnyObject {
    associatedtype T
    var viewController: UIViewController? { get set }
    func transition(route: T)
    init(viewController: UIViewController?)
}
