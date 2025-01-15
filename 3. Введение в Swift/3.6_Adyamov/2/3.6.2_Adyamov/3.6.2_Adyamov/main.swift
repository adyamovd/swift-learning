//
//  main.swift
//  3.6.2_Adyamov
//
//  Created by Диас Адямов  on 13.01.2025.
//

import Foundation

func start() {
    print("Введите исходный текст")
    guard let inputText = readLine() else {
        print("ошибка")
        return
    }
    print("Введите текст для замены")
    guard let changeText = readLine () else {
        print("ошибка")
        return
    }
    print("На что нужно заменить \"",changeText,"\"?")
    guard let replaceText = readLine() else {
        print("ошибка")
        return
    }
    print("Результат")
    let newString = inputText.replacing(changeText, with: replaceText)
    print(newString)
}
start()

