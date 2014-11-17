//
//  ViewController.swift
//  dynamic-meal-table
//
//  Copyright (c) 2014 alura. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let meals = [ "eggplant brownie", "zucchini muffin" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("view did load")
    }
    
    override func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return meals.count
    }
    
    override func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let row = indexPath.row
            let meal = meals[ row ]
            var cell = UITableViewCell(style: UITableViewCellStyle.Default,
                reuseIdentifier: nil)
            cell.textLabel.text = meal
            return cell
    }
}
