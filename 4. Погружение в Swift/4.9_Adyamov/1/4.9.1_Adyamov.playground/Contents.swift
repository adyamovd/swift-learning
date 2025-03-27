import UIKit

extension Array where Element: Equatable {
    func unique() -> [Element] {
        var uniqueElements = [Element]()
        for element in self {
            guard !uniqueElements.contains(element) else { continue }
            uniqueElements.append(element)
        }
        return uniqueElements
    }
}

let numbers = [10, 7, 44, 4, 2, 4, 10]
let uniqueNumbers = numbers.unique()
print(uniqueNumbers)

let strings = ["Vlad", "Dias", "Kostya", "Bot", "Dias", "Vlad"]
let uniqueStrings = strings.unique()
print(uniqueStrings)
