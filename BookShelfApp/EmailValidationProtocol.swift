//
//  EmailValidationProtocol.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/23/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import Foundation

protocol EmailValidationProtocol { }

extension EmailValidationProtocol {
    func validateEmail(_ email: String) -> String {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        if emailTest.evaluate(with: email) {
            return Messages.ValidationMessages.successMsg
        } else {
            return Messages.ValidationMessages.invalidEmail
        }
    }
    
}
