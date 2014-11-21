//
//  NewItemViewController.swift
//  eggplant-brownie
//
//  Copyright (c) 2014 alura. All rights reserved.
//

import UIKit

class NewItemViewController: UIViewController {
    @IBOutlet var nameField:UITextField?
    @IBOutlet var caloriesField:UITextField?
    
    @IBAction func addNewItem() {
        if nameField == nil || caloriesField == nil {
            return
        }
        let name = nameField!.text
        let calories = NSString(string: caloriesField!.text).doubleValue
        
        let item = Item(name: name, calories: calories)
        if let navigation = navigationController {
            navigation.popViewControllerAnimated(true)
        }
    }

}
