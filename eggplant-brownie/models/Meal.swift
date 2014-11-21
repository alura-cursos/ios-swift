//
//  Meal.swift
//  eggplant-brownie
//  Copyright (c) 2014 alura. All rights reserved.
//

import Foundation

class Meal {
    let name:String
    let happiness:Int
    var items = Array<Item>()
    init(name: String, happiness: Int) {
        self.name = name
        self.happiness = happiness
    }
    
    func allCalories() -> Double {
        println("calculating")
        var total = 0.0
        for i in items {
            total += i.calories
        }
        return total
    }
    
    func details() -> String {
        var message = "Happiness: \(self.happiness)"
        
        for item in self.items {
            message += "\n * \(item.name) - \(item.calories) calories"
        }
        
        return message
    }

}