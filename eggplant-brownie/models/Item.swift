//
//  Item.swift
//  eggplant-brownie
//
//  Copyright (c) 2014 alura. All rights reserved.
//

import Foundation

class Item: NSObject, Equatable, NSCoding {

    let name:String
    let calories:Double
    init(name: String, calories: Double) {
        self.name = name
        self.calories = calories
    }

    required init(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObjectForKey("name") as String
        self.calories = aDecoder.decodeDoubleForKey("calories")
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.name, forKey: "name")
        aCoder.encodeDouble(self.calories, forKey: "calories")
    }
}
func ==(first:Item, second:Item) -> Bool {
    return first.name == second.name && first.calories == second.calories
}
