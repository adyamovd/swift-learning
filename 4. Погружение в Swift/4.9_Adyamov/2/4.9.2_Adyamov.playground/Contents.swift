import UIKit

struct GenericArray<T: Comparable> {
    var elements: [T]

    var sortedAscending: [T] {
        return elements.sorted()
    }

    var sortedDescending: [T] {
        return elements.sorted(by: >)
    }

    var originalArray: [T] {
        return elements
    }
}

let intArray = GenericArray(elements: [30, 10, 40, 20])
print("Отсортированный по возрастанию: \(intArray.sortedAscending)")
print("Отсортированный по убыванию: \(intArray.sortedDescending)")
print("Исходный массив Int: \(intArray.originalArray)")

let stringArray = GenericArray(elements: ["Vlad", "Dias", "Kostya", "Bot"])
print("Отсортированный по возрастанию: \(stringArray.sortedAscending)")
print("Отсортированный по убыванию: \(stringArray.sortedDescending)")
print("Исходный массив String: \(stringArray.originalArray)")
