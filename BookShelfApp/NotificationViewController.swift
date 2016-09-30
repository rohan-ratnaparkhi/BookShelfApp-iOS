//
//  NotificationViewController.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/28/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        CommonUtil.disableNavigationDrawer()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell: NotificationTableCellView = self.tableView.dequeueReusableCell(withIdentifier: "NotificationTableCellView", for: indexPath) as! NotificationTableCellView
        return tableCell
    }
    
}
