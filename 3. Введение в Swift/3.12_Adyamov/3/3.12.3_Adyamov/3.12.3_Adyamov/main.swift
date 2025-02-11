//
//  main.swift
//  3.12.3_Adyamov
//
//  Created by Диас Адямов  on 26.01.2025.
//

import Foundation

func findMinMax(numbers: [Int]) -> (min: Int, max: Int)? {
    guard var min = numbers.first, var max = numbers.first else { return nil }
    for num in numbers {
        if num < min {
            min = num
        } else if num > max {
            max = num
        }
    }
    return (min, max)
}
print("Введите числа через запятую:")
if let input = readLine() {
    let numberStrings = input.split(separator: ",")
    var numbers: [Int] = []
    for numberString in numberStrings {
        if let number = Int(numberString) {
            numbers.append(number)
        }
    }
    if let (min, max) = findMinMax(numbers: numbers) {
        print("Наименьшее число: \(min)")
        print("Наибольшее число: \(max)")
    } else {
        print("Список чисел пуст или некорректен.")
    }
}
