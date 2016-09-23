//
//  SignUpViewController.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/22/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, CustomNavigationBarProtocol {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayCustomizeNavBar(self, title: Constants.titles.signUpTitle)
        
    }
    
}
