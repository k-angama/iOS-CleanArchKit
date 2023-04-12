//
//  SecondRouter.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import UIKit
import CleanArchKit

enum SecondRoute: Route {
    case dismiss
}

class SecondRouter: BaseRouter<SecondRoute> {
    
    // Transition between screens
    override func transition(route: SecondRoute) {

        switch route {
        case .dismiss:
            self.viewController?.dismiss(animated: true)
            break
        }
        
    }
    
}
