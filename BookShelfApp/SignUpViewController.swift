//
//  SignUpViewController.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/22/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.title = Constants.titles.signUpTitle
    }
    
}
