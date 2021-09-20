//
//  LoginCredentials.swift
//  classOrder
//
//  Created by Santiago Varela Mejia on 19/09/21.
//

import Foundation

struct LoginCredentials {
    var email: String
    var password: String
}

extension LoginCredentials {
    static var new: LoginCredentials {
        LoginCredentials(email: "", password: "")
    }
}
