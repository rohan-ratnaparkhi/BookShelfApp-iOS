//
//  PasswordValidationProtocol.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/23/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

protocol PasswordValidationProtocol { }

extension PasswordValidationProtocol {
    func validatePassword(pwd: String) -> String {
        if pwd.characters.count < 6 {
            return Messages.ValidationMessages.passwordIsSmall
        } else {
            return Messages.ValidationMessages.successMsg
        }
    }
}