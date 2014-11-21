//
//  MealsTableTableViewController.swift
//  eggplant-brownie
//
//  Copyright (c) 2014 alura. All rights reserved.
//

import UIKit

class MealsTableViewController: UITableViewController, AddAMealDelegate {

    var meals = [ Meal(name: "Eggplant brownie", happiness: 5),
        Meal(name: "Zucchini Muffin", happiness: 3)]

    func add(meal: Meal) {
        meals.append(meal)
        tableView.reloadData()
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
            cell.textLabel.text = meal.name
            let longPress = UILongPressGestureRecognizer(target: self, action: Selector("showDetails:"))
            cell.addGestureRecognizer(longPress)
            return cell
    }
    
    func showDetails(recognizer: UILongPressGestureRecognizer){
        if recognizer.state == UIGestureRecognizerState.Began {
            let cell = recognizer.view as UITableViewCell
            let indexPath = tableView.indexPathForCell(cell)
            if indexPath == nil {
                return
            }
            let row = indexPath!.row
            let meal = meals[ row ]

            let details = UIAlertController(title: meal.name,
                message: "Happiness: \(meal.happiness)",
                preferredStyle: UIAlertControllerStyle.Alert)
            let ok = UIAlertAction(title: "Ok",
                style: UIAlertActionStyle.Cancel,
                handler: nil)
            details.addAction(ok)
            presentViewController(details, animated: true, completion: nil)
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "addMeal") {
            let view = segue.destinationViewController as ViewController
            view.delegate = self
        }
    }

}
