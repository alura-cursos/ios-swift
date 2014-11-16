//  Created by Guilherme Silveira
//  Copyright (c) 2014 alura. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var happinessField: UITextField!
    
    @IBAction func add() {
        let name = nameField.text
        let happiness = happinessField.text
        println("eaten: \(name) \(happiness)!")
    }


}

