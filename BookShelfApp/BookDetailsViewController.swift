//
//  BookDetailsViewController.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 10/3/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

class BookDetailsViewController: UIViewController {
    
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var bookLender: UILabel!
    @IBOutlet weak var bindingType: UILabel!
    @IBOutlet weak var bookCondition: UILabel!
    @IBOutlet weak var publishedOn: UILabel!
    @IBOutlet weak var bookGenre: UILabel!
    @IBOutlet weak var publisherName: UILabel!
    @IBOutlet weak var isbn13: UILabel!
    @IBOutlet weak var isbn10: UILabel!
    @IBOutlet weak var edition: UILabel!
    @IBOutlet weak var listPrice: UILabel!
    @IBOutlet weak var bookTags: UITextView!
    @IBOutlet weak var comments: UITextView!
    @IBOutlet weak var btnBorrow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func borrowBook(_ sender: UIButton) {
        print("book borrow action button clicked")
    }
    
    
    
    
    
}
