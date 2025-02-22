import UIKit

func bubbleSort(array: [Int], condition: (Int, Int) -> Bool) -> [Int] {
    var sortedArray = array
    
    for i in 0..<sortedArray.count {
        for j in 0..<(sortedArray.count - 1 - i) {
            if condition(sortedArray[j], sortedArray[j + 1]) {
                sortedArray.swapAt(j, j + 1) // вот это без чата точно бы не допер (но разборался), эта строка меняет элементы j и j+1 местами, если выполняется условие (которое мы пишем на 19 или 20 строчке соответственно)
            }
        }
    }
    
    return sortedArray
}
let arrayFirst = [5, 3, 8, 1, 2]
let arraySecond = [7, 9, 6, 4, 0]

let sortedAscending = bubbleSort(array: arrayFirst) { $0 > $1 }
let sortedDescending = bubbleSort(array: arraySecond) { $0 < $1 }

print(sortedAscending)
print(sortedDescending)
