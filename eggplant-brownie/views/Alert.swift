//
//  Alert.swift
//  eggplant-brownie
//
//  Created by Guilherme Silveira on 11/21/14.
//  Copyright (c) 2014 alura. All rights reserved.
//

import UIKit

class Alert {
    let controller:UIViewController
    init(controller:UIViewController) {
        self.controller = controller
    }
    
    func show(message:String) {
        let details = UIAlertController(title: "Sorry",
            message: message,
            preferredStyle: UIAlertControllerStyle.Alert)
        let cancel = UIAlertAction(title: "Understood",
            style: UIAlertActionStyle.Cancel,
            handler: nil)
        details.addAction(cancel)
        controller.presentViewController(details, animated: true, completion: nil)
    }
}