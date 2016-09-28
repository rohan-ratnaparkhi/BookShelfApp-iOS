//
//  TasksTableCellView.swift
//  BookShelfApp
//
//  Created by Rohan Ratnaparkhi on 9/27/16.
//  Copyright © 2016 Talentica. All rights reserved.
//

import UIKit


class TasksTableCellView: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var requestedByName: UILabel!
    @IBOutlet weak var requestedOnDate: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
