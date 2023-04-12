//
//  SecondViewModel.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import RxSwift
import CleanArchKit

class SecondViewModel: BaseViewModel<SecondRouter, SecondViewModel.Input, SecondViewModel.Output> {
    
    struct Input: InputProtocol {
        let closeButton = PublishSubject<Void>()
        var getUser: GetUserUseCase!
    }

    struct Output: OutputProtocol {
        let isLoarding = BehaviorSubject<Bool>(value: true)
        let firstname = BehaviorSubject<String>(value: "")
        let lastname = BehaviorSubject<String>(value: "")
        let email = BehaviorSubject<String>(value: "")
    }
    
    // Setup business logic
    override func setup() {
        // Configure business logic here
    }
    
    // Execute use cases
    override func exeUseCase() {
        
        input.getUser.execute(params: nil)
            .subscribe(onSuccess: { [weak self] user in
                self?.output.firstname.onNext(user.firtName)
                self?.output.lastname.onNext(user.lastName)
                self?.output.email.onNext(user.email)
            }, onDisposed: { [weak self] in
                self?.output.isLoarding.onNext(false)
            })
            .disposed(by: disposeBag)
        
    }
    
    // Configure observers
    override func observers() {
        
        input.closeButton
            .subscribe { [weak self] _ in
                self?.router.transition(route: .dismiss)
            }
            .disposed(by: disposeBag)
        
    }
    
}
