//
//  main.swift
//  3.11.1_Adyamov
//
//  Created by Диас Адямов  on 25.01.2025.
//

import Foundation

func userNumbers() {
    print("Введите количество вводимых далее значений:")
    guard let nValue = readLine(), let number = Int(nValue) else {
        print("Ошибка: вы не ввели число")
        return
    }
    print("Введите \(number) значений(я):")
    var userElements: [Int] = []
    for uNumber in 0..<number {
        guard let uNumber = readLine(), let userNubmers = Int(uNumber) else { continue }
        userElements.append(userNubmers)
    }
    let resultUserElements : [Int] = Array(userElements.reversed())
    print(resultUserElements)
}
userNumbers()

