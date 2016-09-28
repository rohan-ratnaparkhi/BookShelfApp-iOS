//
//  AppNotification.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/28/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit


class AppNotification {
    var title: String
    var imgUrl: String
    var returnTo: String?
    var returnFrom: String?
    var returnDate: String
    
    init(title: String, imgUrl: String, returnTo: String?, returnFrom: String?, returnDate: String){
        self.title = title
        self.imgUrl = imgUrl
        self.returnTo = returnTo
        self.returnFrom = returnFrom
        self.returnDate = returnDate
    }
}
