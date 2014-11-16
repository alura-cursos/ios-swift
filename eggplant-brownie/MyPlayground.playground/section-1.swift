import UIKit

class Meal {
    var name: String?
    var happiness: Int?
}

let brownie = Meal()
brownie.name = "Eggplant brownie"
brownie.happiness = 3

println(brownie.name)
println(brownie.happiness)

let happiness = "5"
println(happiness.toInt())

var name:String!
name = "Eggplant Brownie"
println(countElements(name)) // 7


var name2:String?
if let n = name2 {
    println(countElements(n)) // 7
} else {
    println("empty")
}
