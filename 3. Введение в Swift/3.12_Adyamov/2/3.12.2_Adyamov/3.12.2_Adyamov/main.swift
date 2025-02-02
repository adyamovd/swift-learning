//
//  main.swift
//  3.12.2_Adyamov
//
//  Created by Диас Адямов  on 26.01.2025.
//

import Foundation

func isPalindrom(_ str: String) -> Bool {
    let reversedStr = String(str.reversed())
    return str == reversedStr
}
print("Введите строку:")
if let input = readLine() {
    if isPalindrom(input) {
        print("Введенная строка является палиндромом")
    } else {
        print("Введенная строка не является палиндромом")
    }
}
