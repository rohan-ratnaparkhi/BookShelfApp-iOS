//
//  AddBookManuallyViewController.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 10/6/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

class AddBookManuallyViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var cameraButton: UIButton!
    @IBOutlet weak var bookTitle: UITextField!
    @IBOutlet weak var authorName: UITextField!
    @IBOutlet weak var isbn13: UITextField!
    @IBOutlet weak var isbn10: UITextField!
    @IBOutlet weak var publisherName: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var bookTags: UITextField!
    @IBOutlet weak var comments: UITextView!
    @IBOutlet weak var binding: UIPickerView!
    @IBOutlet weak var genre: UIPickerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func captureBookImage(_ sender: UIButton) {
    }
    
    
    @IBAction func submitBookDetails(_ sender: UIButton) {
    }
    
    
    @IBAction func cancelAddingBook(_ sender: UIButton) {
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == binding {
            return Constants.bookBinding.types.count
        } else if pickerView == genre {
            return Constants.bookGenres.types.count
        } else {
            return 0
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == binding {
            return Constants.bookBinding.types[row]
        } else if pickerView == genre {
            return Constants.bookGenres.types[row]
        } else {
            return ""
        }
        
    }
    
}
