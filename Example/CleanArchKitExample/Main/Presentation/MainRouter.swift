//
//  MainRouter.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation
import UIKit
import CleanArchKit

enum MainRoute: Route {
    case dismiss
    case showSecond
}

class MainRouter: BaseRouter<MainRoute> {
    
    override func transition(route: MainRoute) {
        switch route {
        case .showSecond:
            viewController?.performSegue(withIdentifier: "SecondSegue", sender: nil)
            break
        case .dismiss:
            break
        }
    }
    
}
