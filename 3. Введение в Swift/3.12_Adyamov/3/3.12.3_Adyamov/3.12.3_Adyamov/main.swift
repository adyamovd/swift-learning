//
//  main.swift
//  3.12.3_Adyamov
//
//  Created by Диас Адямов  on 26.01.2025.
//

import Foundation

func findMinMax(numbers: [Int]) -> (min: Int, max: Int)? {
    guard let min = numbers.min(), let max = numbers.max() else {
        return nil
    }
    return (min, max)
}
print("Введите числа через запятую:")
if let input = readLine() {
    let numberStrings = input.split(separator: ",")
}
