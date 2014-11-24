//
//  RemoveViewController.swift
//  eggplant-brownie
//
//  Created by Guilherme Silveira on 11/24/14.
//  Copyright (c) 2014 alura. All rights reserved.
//

import Foundation
import UIKit

class RemoveMealController {
    let controller:UIViewController
    init(controller:UIViewController) {
        self.controller = controller
    }
    func show(meal:Meal, handler:(UIAlertAction!) -> Void) {
        let details = UIAlertController(title: meal.name,
            message: meal.details(),
            preferredStyle: UIAlertControllerStyle.Alert)
        
        let remove = UIAlertAction(title: "Remove",
            style: UIAlertActionStyle.Destructive,
            handler: handler)
        details.addAction(remove)
        let cancel = UIAlertAction(title: "Cancel",
            style: UIAlertActionStyle.Cancel,
            handler: nil)
        details.addAction(cancel)
        controller.presentViewController(details, animated: true, completion: nil)
    }
}