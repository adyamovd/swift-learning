import UIKit

struct Container {
    let value: Int
}

var containers: [Container] = [
    Container(value: 7),
    Container(value: 1),
    Container(value: 5),
    Container(value: 20),
    Container(value: 10),
    Container(value: 30),
    Container(value: 35)
]

let optionalConatianers: [Container?] = [
    Container(value: 7),
    nil,
    Container(value: 5),
    nil,
    Container(value: 10),
    Container(value: 30),
    Container(value: 35)
]

let containersInBrackets: [[Container]] = [
    [containers[0], containers[1], containers[2], containers[3],
     containers[4], containers[5], containers[6]]
]

containers.forEach { print($0.value) }

if let evenContainer = containers.first(where: { $0.value % 2 == 0 }) {
    print("Первый четный элемент: \(evenContainer.value)")
} else {
    print("Четных элементов нет")
}

if let greaterThanTenContainer = containers.last(where: { $0.value > 10 }) {
    print("Последний элемент, значение которого больше 10: \(greaterThanTenContainer.value)")
} else {
    print("Такого элемента нет")
}

if let evenContainerIndex = containers.firstIndex(where: { $0.value % 2 == 0 }) {
    print("Первый четный элемент: \(evenContainerIndex)")
} else {
    print("Четных элементов нет")
}

if let greaterThanTenContainerIndex = containers.lastIndex(where: { $0.value > 10 }) {
    print("Последний элемент, значение которого больше 10: \(greaterThanTenContainerIndex)")
} else {
    print("Такого элемента нет")
}

let greaterThanHundred = containers.contains(where: { $0.value > 100 })
print("Находится ли в массиве элемент больше 100? - \(greaterThanHundred)")

let minValue = containers.min(by: { $0.value < $1.value })
print("Минимальное значение массива: \(minValue?.value ?? 0)")

let maxValue = containers.max(by: { $0.value < $1.value })
print("Максимальное значение массива: \(maxValue?.value ?? 0)")

let ascendingConatiners = containers.sorted(by: { $0.value < $1.value })
print("Отсортированный по возрастанию массив: \(ascendingConatiners)")

let descendingConatiners = containers.sorted(by: { $1.value < $0.value })
print("Отсортированный по убыванию массив: \(descendingConatiners)")

let evenElements = containers.filter { $0.value % 2 == 0 }
print("Только четные элементы массива: \(evenElements)")

let stringContainers: [String] = containers.enumerated().map { index, container in
    return "Элемент \(index): \(container.value)"
}
print("Новый массив: \(stringContainers)")

let nonNilContainers: [Container] = optionalConatianers.compactMap { $0 }
print("Новый массив значений из опционального массива: \(nonNilContainers)")

let flatMapConatiners: [Container] = containersInBrackets.flatMap { $0 }
print("Склеенный массив: \(flatMapConatiners)")

let sumOfContainers = containers.reduce(0) { result, container in
    result + container.value
}
