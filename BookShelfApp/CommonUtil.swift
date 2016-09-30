//
//  CommonUtil.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/23/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

struct CommonUtil {
    
    static func displaySimpleAlert(_ viewCtrl: UIViewController, title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        viewCtrl.present(alert, animated: true, completion: nil)
    }
    
    static func disableNavigationDrawer(){
        //TODO - code to disable navigation drawer
    }
    
    static func enableNavigationDrawer(){
        //TODO - code to enable navigation drawer
        
    }
    
}
