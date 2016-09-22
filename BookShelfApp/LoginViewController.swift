//
//  LoginViewController.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/22/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradient()
    }
    
    func addGradient() {
        gradientLayer.frame = self.view.bounds
        let color1 = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1.0).CGColor as CGColorRef
        let color2 = UIColor.whiteColor().CGColor as CGColorRef
        gradientLayer.colors = [color1, color2]
              gradientLayer.locations = [0.0, 1.0]
        self.view.layer.addSublayer(gradientLayer)
    }
    
}
