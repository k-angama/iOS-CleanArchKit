//
//  MainViewController.swift
//  CleanArchKitExample
//
//  Created by Karim Angama on 11/04/2023.
//

import Foundation
import RxSwift
import RxCocoa
import CleanArchKit
import NSObject_Rx

class MainViewController: BaseViewController<MainViewModel> {
    
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func setupBindings() {
        
        button.rx.tap.bind(to: viewModel.input.tabButton).disposed(by: rx.disposeBag)
        
    }


}
