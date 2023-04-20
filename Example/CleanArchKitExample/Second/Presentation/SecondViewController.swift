//
//  SecondViewController.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import RxSwift
import NSObject_Rx
import CleanArchKit

class SecondViewController: BaseViewController<SecondViewModel> {
    
    @IBOutlet weak var firstnameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var closeButton: UIBarButtonItem!

    // Setup user interface
    override func setupUI() {
        // Configure user interface here
    }
    
    // Setup bindings
    override func setupBindings() {
        closeButton.rx.tap.bind(to: viewModel.input.closeButton).disposed(by: rx.disposeBag)
    }
    
    // Setup observers
    override func setupObservers() {

        viewModel.output.isLoarding
            .observe(on: MainScheduler.instance)
            .bind(to: indicatorView.rx.isAnimating)
            .disposed(by: rx.disposeBag)
        
        viewModel.output.firstname
            .observe(on: MainScheduler.instance)
            .bind(to: firstnameLabel.rx.text)
            .disposed(by: rx.disposeBag)
        
        viewModel.output.lastname
            .observe(on: MainScheduler.instance)
            .bind(to: lastnameLabel.rx.text)
            .disposed(by: rx.disposeBag)
        
        viewModel.output.email
            .observe(on: MainScheduler.instance)
            .bind(to: emailLabel.rx.text)
            .disposed(by: rx.disposeBag)
        
    }

}
