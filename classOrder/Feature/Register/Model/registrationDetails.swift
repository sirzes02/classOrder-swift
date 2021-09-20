//
//  registrationDetails.swift
//  classOrder
//
//  Created by Santiago Varela Mejia on 19/09/21.
//

import Foundation

struct RegistrationDetails {
    var email: String
    var password: String
    var firstName: String
    var lastName: String
    var occupation: String
}

extension RegistrationDetails {
    static var new: RegistrationDetails {
        RegistrationDetails(email: "", password: "", firstName: "", lastName: "", occupation: "")
    }
}
