//
//  TasksViewController.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/23/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var taskList: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        populateTaskList()
        printTaskList()
    }
    
    func populateTaskList(){
        for i in 0..<10 {
            taskList.append(Task(id: "\(i)", imgUrl: Constants.urls.tempImgUrl, title: "title asdfsdf sdfadsfdasfasdfsdfds \(i)", author: "author \(i) asdfsdfadsf asdf dasf adsf sadf sadf dsf ", requestedBy: "Rohan R. asdfdsaf adsf sadf das fsadf sdf", requestedOn: "20 Apr"))
        }
    }
    
    func printTaskList(){
        for task in taskList {
            print(task.title)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.taskList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell: TasksTableCellView = self.tableView.dequeueReusableCell(withIdentifier: "TasksTableCellView", for: indexPath) as! TasksTableCellView
        let task = taskList[indexPath.row]
        tableCell.author.text = task.author
        tableCell.title.text = task.title
        tableCell.requestedByName.text = task.requestedBy
        tableCell.requestedOnDate.text = task.requestedOn
//        if let url = NSURL(string: task.imgUrl) {
//            if let data = NSData(contentsOf: url as URL) {
//                tableCell.img.image = UIImage(data: data as Data)
//            }
//       }
        return tableCell
    }
    
}
