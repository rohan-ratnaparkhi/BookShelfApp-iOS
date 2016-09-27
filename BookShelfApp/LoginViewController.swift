//
//  LoginViewController.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/22/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, EmailValidationProtocol, PasswordValidationProtocol {
    
    let gradientLayer = CAGradientLayer()
    
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradient()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
   
    func addGradient() {
        gradientLayer.frame = self.view.bounds
        let color1 = UIColor(red: 210/255, green: 210/255, blue: 210/255, alpha: 1.0).cgColor as CGColor
        let color2 = UIColor.white.cgColor as CGColor
        gradientLayer.colors = [color1, color2]
              gradientLayer.locations = [0.0, 1.0]
        self.view.layer.addSublayer(gradientLayer)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfEmail.resignFirstResponder()
        tfPassword.resignFirstResponder()
    }
    
    @IBAction func login(_ sender: UIButton) {
        let emailResult = validateEmail(tfEmail.text!)
        let pwdResult = validatePassword(tfPassword.text!)
        if emailResult != Messages.ValidationMessages.successMsg {
            CommonUtil.displaySimpleAlert(self, title: "Error", message: emailResult)
        } else if pwdResult != Messages.ValidationMessages.successMsg {
            CommonUtil.displaySimpleAlert(self, title: "Error", message: pwdResult)
        } else {
//            go to home page
        }
        
    }
}
