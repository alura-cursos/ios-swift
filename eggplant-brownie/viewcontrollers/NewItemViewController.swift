//
//  NewItemViewController.swift
//  eggplant-brownie
//
//  Copyright (c) 2014 alura. All rights reserved.
//

import UIKit

protocol AddAnItemDelegate {
    func addNew(item:Item)
}
class NewItemViewController: UIViewController {
    let delegate:AddAnItemDelegate?
    init(delegate:AddAnItemDelegate) {
        self.delegate = delegate
        super.init(nibName: "NewItemViewController", bundle: nil)
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    @IBOutlet var nameField:UITextField?
    @IBOutlet var caloriesField:UITextField?
    
    @IBAction func addNewItem() {
        if nameField == nil || caloriesField == nil {
            return
        }
        let name = nameField!.text
        let calories = NSString(string: caloriesField!.text).doubleValue
        
        let item = Item(name: name, calories: calories)
        
        if delegate == nil {
            return
        }
        delegate!.addNew(item)
        
        if let navigation = navigationController {
            navigation.popViewControllerAnimated(true)
        }
    }

}
