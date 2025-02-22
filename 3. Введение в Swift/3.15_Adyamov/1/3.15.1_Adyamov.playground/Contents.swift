import UIKit

func filterArray(array: [Int], condition: (Int) -> Bool) -> [Int] {
    var filteredArray: [Int] = []
    for element in array {
        if condition(element) {
            filteredArray.append(element)
        }
    }
    return filteredArray
}

filterArray(array: [1, 5, 6, 7, 10, 12], condition: {$0 % 2 == 1})
