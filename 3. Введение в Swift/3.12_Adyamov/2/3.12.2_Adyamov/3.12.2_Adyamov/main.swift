//
//  main.swift
//  3.12.2_Adyamov
//
//  Created by Диас Адямов  on 26.01.2025.
//

import Foundation

func isPalindrom(_ str: String) -> Bool {
    let reversedStr = String(str.reversed())
    let length = str.count
    for i in 0..<length / 2 {
        let startIndex = str.index(str.startIndex, offsetBy: i)
        let endIndex = str.index(str.endIndex, offsetBy: -(i+1)) // вот тут ломал голову как с обратной стороны подобраться, подсмотрел в чате, я так понял что в офсете если отрицательное число то он идет с конца
        guard str[startIndex] == reversedStr[endIndex] else { return false }
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
