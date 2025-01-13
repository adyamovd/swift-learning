//
//  main.swift
//  3.6.2_Adyamov
//
//  Created by Диас Адямов  on 13.01.2025.
//

import Foundation

print("Введите исходный текст")
var inputText = readLine()
let inputString: String? = inputText
print("Введите текст для замены")
var changeText = readLine()
let changeString: String? = changeText
print("На что нужно заменить \"ли\"?")
var replaceText = readLine()
let replaceString: String? = replaceText
let newString = inputString?.replacing(changeString ?? "Text", with: replaceString ?? "Text")
print(newString)
//   брат вижу что прога раобтает не совсем так как надо, но я честно пока хз как пофиксить, но формально все меняется и не крашится на энтере ахах
