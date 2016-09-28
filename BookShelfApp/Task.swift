//
//  Task.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/27/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

class Task {
    var id: String
    var imgUrl: String
    var title: String
    var author: String
    var requestedBy: String
    var requestedOn: String
    
    init(id: String, imgUrl: String, title: String, author: String, requestedBy: String, requestedOn: String){
        self.id = id
        self.imgUrl = imgUrl
        self.title = title
        self.author = author
        self.requestedBy = requestedBy
        self.requestedOn = requestedOn
    }
    
}
