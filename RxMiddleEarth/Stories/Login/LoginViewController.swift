//
//  ViewController.swift
//  RxMiddleEarth
//
//  Created by Göksel Köksal on 24/12/15.
//  Copyright © 2015 GK. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class LoginViewController: UIViewController {
    
    let model = LoginModel()
    let disposeBag = DisposeBag()
    var loginView: LoginView {
        return self.view as! LoginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.model.username
            .subscribeNext { (username) -> Void in
                print("Username: \(username)")
            }
            .addDisposableTo(disposeBag)
        
        self.model.password
            .subscribeNext { (password) -> Void in
                print("Password: \(password)")
            }
            .addDisposableTo(disposeBag)
        
        self.loginView.usernameField.rx_text
            .bindTo(self.model.username)
            .addDisposableTo(disposeBag)
        
        self.loginView.passwordField.rx_text
            .bindTo(self.model.password)
            .addDisposableTo(disposeBag)
    }
}

