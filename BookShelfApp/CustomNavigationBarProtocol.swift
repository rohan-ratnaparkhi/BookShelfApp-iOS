//
//  CustomNavigationBarProtocol.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/23/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

protocol CustomNavigationBarProtocol {
    
}

extension CustomNavigationBarProtocol {
    func displayCustomizeNavBar(_ controller: UIViewController, title: String){
        controller.navigationController?.setNavigationBarHidden(false, animated: true)
        controller.navigationController?.navigationBar.barTintColor = Constants.colors.navigationBarBackgroundColor
        controller.title = title
    }
}
