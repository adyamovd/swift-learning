import UIKit

var namesSet: Set = ["Влад", "Тоха", "Тимур", "Агентство", "Недвижимости", "Костя", "Таня", "Нагатинский", "Айфон", "Буся", "Дженни", "Жубик", "Помада"]
let name = "Буся"
var random = Int.random(in: 0...namesSet.count - 1)
if namesSet.count < 5 {
    namesSet.insert(name)
} else {
    namesSet.remove(at: namesSet.index(namesSet.startIndex, offsetBy: random))
}
print(namesSet)
//реализовано, но подозреваю, что это можно короче сделать
