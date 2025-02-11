//
//  main.swift
//  3.12.2_Adyamov
//
//  Created by Диас Адямов  on 26.01.2025.
//

import Foundation

func isPalindrom(_ str: String) -> Bool {
    let length = str.count
    for i in 0..<length / 2 {
        let startIndex = str.index(str.startIndex, offsetBy: i)
        let endIndex = str.index(str.endIndex, offsetBy: -(i+1))
        guard str[startIndex] == str[endIndex] else { return false }
    }
    return true
}
print("Введите строку:")
if let input = readLine() {
    if isPalindrom(input) {
        print("Введенная строка является палиндромом")
    } else {
        print("Введенная строка не является палиндромом")
    }
}
