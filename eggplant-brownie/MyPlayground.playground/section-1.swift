import UIKit

func helloCalories() {
    println("hello calories!")
}

helloCalories()
println("oi tudo bem")
helloCalories()

let calories = [ 50.5, 100, 300, 500]
for i in 0...(calories.count - 1) {
    println(calories[i])
}


func allCalories(calories: Array<Double>) -> Double {
    var total:Double = 0
    for c in calories {
        total += c
    }
    return total
}

let totalCalories = allCalories([ 10.5, 100, 300, 500])
println(totalCalories)

var values = [ 1, 2]

var total = 0
for v in values {
    total += v
}
println(total / values.count) // 1? 1.5?
