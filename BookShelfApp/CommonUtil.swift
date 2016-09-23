//
//  CommonUtil.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/23/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

struct CommonUtil {
    
    static func displaySimpleAlert(viewCtrl: UIViewController, title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        viewCtrl.presentViewController(alert, animated: true, completion: nil)
    }
}
