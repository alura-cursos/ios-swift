//  Created by Guilherme Silveira
//  Copyright (c) 2014 alura. All rights reserved.

import UIKit

protocol AddAMealDelegate {
    func add(meal: Meal)
}
class ViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var happinessField: UITextField!
    var delegate:AddAMealDelegate?
    
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

