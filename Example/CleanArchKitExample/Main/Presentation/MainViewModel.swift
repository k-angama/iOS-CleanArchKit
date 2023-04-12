//
//  MainViewModel.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation
import RxSwift
import CleanArchKit

class MainViewModel: BaseViewModel<MainRouter, MainViewModel.Input, MainViewModel.Output> {
    
    struct Input: InputProtocol {
        let email = BehaviorSubject<String>(value: "")
        let password = BehaviorSubject<String>(value: "")
        let tabButton = PublishSubject<Void>()
        
        // Use Cases
        var checkValidEmailUseCase: CheckValidEmailUseCase!
        var checkCredentialUseCase: CheckCredentialUseCase!
    }

    struct Output: OutputProtocol {
        let isShowLoading = BehaviorSubject<Bool>(value: false)
    }
    
    override func observers() {
        input.tabButton
            .bind { [weak self] _ in
                self?.router.transition(route: .showSecond)
            }
            .disposed(by: disposeBag)
    }
    
}
