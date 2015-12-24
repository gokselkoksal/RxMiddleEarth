//
//  LoginModel.swift
//  RxMiddleEarth
//
//  Created by Göksel Köksal on 24/12/15.
//  Copyright © 2015 GK. All rights reserved.
//

import Foundation
import RxSwift

class LoginModel {
    
    private struct LoginData {
        static let username = "gokselkk"
        static let password = "123"
    }
    
    let username = Variable("")
    let password = Variable("")
    
    func login() -> Bool {
        return (username.value == LoginData.username &&
                password.value == LoginData.password)
    }
}
