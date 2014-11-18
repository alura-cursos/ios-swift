//  Created by Guilherme Silveira
//  Copyright (c) 2014 alura. All rights reserved.

import UIKit

protocol AddAMealDelegate {
    func add(meal: Meal)
}
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var items = [ Item(name: "Eggplant Brownie", calories: 10),
        Item(name: "Zucchini Muffin", calories: 10),
        Item(name: "Cookie", calories: 10),
        Item(name: "Coconut oil", calories: 500),
        Item(name: "Chocolate frosting", calories: 1000),
        Item(name: "Chocolate chip", calories: 1000)
    ]

    @IBOutlet var nameField: UITextField!
    @IBOutlet var happinessField: UITextField!
    var delegate:AddAMealDelegate?

    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return items.count
    }

    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            let row = indexPath.row
            let item = items[ row ]
            var cell = UITableViewCell(style:
                UITableViewCellStyle.Default,reuseIdentifier: nil)
            cell.textLabel.text = item.name
            return cell
    }

    func tableView(tableView: UITableView,
        didSelectRowAtIndexPath indexPath: NSIndexPath) {
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            if cell == nil {
                return
            }
            cell!.accessoryType = UITableViewCellAccessoryType.Checkmark
    }

    @IBAction func add() {
        if nameField == nil || happinessField == nil {
            return
        }

        let name = nameField!.text
        let happiness = happinessField!.text.toInt()
        if happiness == nil {
            return
        }

        let meal = Meal(name: name, happiness: happiness!)
        println("eaten: \(meal.name) \(meal.happiness)")

        if delegate == nil {
            return
        }
        
        delegate!.add(meal)
        
        if let navigation = self.navigationController {
            navigation.popViewControllerAnimated(true)
        }
    }

}

