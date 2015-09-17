//
//  MasterTableViewController.swift
//  MasterDetailExample
//
//  Created by 中村祐太 on 2015/09/17.
//  Copyright (c) 2015年 中村祐太. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    
    private let cellIdentifier = "fruitCell"
    private let tableData = ["Apple","Banana","Orange","Strawberry","Melon","Apricot"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! UITableViewCell
        cell.textLabel?.text = tableData[indexPath.row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let viewController = segue.destinationViewController as? ViewController {
            if let selectedRowIndexPath = tableView.indexPathForSelectedRow() {
                viewController.fruitName = tableData[selectedRowIndexPath.row]
            }
        }
    }
}
