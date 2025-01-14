//
//  main.swift
//  3.6.2_Adyamov
//
//  Created by Диас Адямов  on 13.01.2025.
//

import Foundation

print("Введите исходный текст")
func printSumm() {
    guard let inputText = readLine() else {
        return
    }
    print("Введите текст для замены")
    guard let changeText = readLine () else {
        return
    }
    print("На что нужно заменить?")
    guard let replaceText = readLine() else {
        return
    }
    print("Результат")
    let newString = inputText.replacing(changeText, with: replaceText)
    print(newString)
}
printSumm()

