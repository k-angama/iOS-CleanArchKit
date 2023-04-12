//
//  SecondViewController.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 12/04/2023.
//

import Foundation
import RxSwift
import RxCocoa
import CleanArchKit

class SecondViewController: BaseViewController<SecondViewModel> {
    
    @IBOutlet weak var firstnameLabel: UILabel!
    @IBOutlet weak var lastnameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var closeButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Setup bindings
    override func setupBindings() {

        closeButton.rx.tap.bind(to: viewModel.input.closeButton).disposed(by: disposeBag)
    }
    
    // Setup observers
    override func setupObservers() {

        viewModel.output.isLoarding
            .observe(on: MainScheduler.instance)
            .bind(to: indicatorView.rx.isAnimating)
            .disposed(by: disposeBag)
        
        viewModel.output.firstname
            .observe(on: MainScheduler.instance)
            .bind(to: firstnameLabel.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.output.lastname
            .observe(on: MainScheduler.instance)
            .bind(to: lastnameLabel.rx.text)
            .disposed(by: disposeBag)
        
        viewModel.output.email
            .observe(on: MainScheduler.instance)
            .bind(to: emailLabel.rx.text)
            .disposed(by: disposeBag)
        
    }
        
    // Setup user interface
    override func setupUI() {
        // Configure user interface here
    }

}
