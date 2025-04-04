import UIKit

let initialDictionary = ["Диас Адямов": 4444, "Влад Форафонтов": 1998, "Костя Китаев": 1999, "Юра из сбера": 10000, "Тоха из культа": 5000]
let secondDictionary = ["Жубик Жубиков": 3489, "Влад Форафонтов": 2000, "Дженни Владова": 4000, "Тоха из культа": 1000]
var resultArray = Array(initialDictionary.keys) + Array(secondDictionary.keys)
var resultDictionary: [String: Int] = [:]
for key in resultArray {
    guard resultDictionary[key] == nil else { continue }
    let value1 = initialDictionary[key]
    let value2 = secondDictionary[key]
    if let value1, let value2 {
        resultDictionary[key] = value1 + value2
    } else if let value1 {
        resultDictionary[key] = value1
    } else if let value2 {
        resultDictionary[key] = value2
    }
}
print(resultDictionary)

