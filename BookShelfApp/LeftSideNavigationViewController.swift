//
//  LeftSideNavigationViewController.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/29/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

class LeftSideNavigationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    let categoryArr: [String] = ["Fiction", "Science", "Children", "Satire"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Constants.titles.navigationDrawerMenu
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = UITableViewCell()
        tableCell.textLabel?.text = categoryArr[indexPath.row]
        tableCell.textLabel?.font = UIFont(name: "Roboto-Regular", size: 15)
        return tableCell
    }


}
