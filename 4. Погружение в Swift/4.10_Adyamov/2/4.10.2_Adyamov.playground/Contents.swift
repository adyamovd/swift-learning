import UIKit

struct Container {
    let value: Int
}

let containers: [Container] = [
    Container(value: 7),
    Container(value: 1),
    Container(value: 5),
    Container(value: 20),
    Container(value: 10),
    Container(value: 30),
    Container(value: 35)
]

extension Array {
    func customMap<T>(
        _ transform: (Element) throws -> T
    ) rethrows -> [T] {
        var result: [T] = []
        for element in self {
            result.append(try transform(element))
        }
        return result
    }
}

let stringContainers: [String] = containers.customMap { container in
    return "Элемент: \(container.value)"
}
print("Новый массив: \(stringContainers)")
