//
//  main.swift
//  3.4_Adyamov
//
//  Created by Диас Адямов  on 07.01.2025.
//
import Foundation
print("Исходный текст")
var inputString = "А не спеть ли мне песню о любви? А не выдумать ли новый жанр?"
print(inputString)
print("Текст для замены")
let changeString = "ли"
print(changeString)
print("Меняем \"\(changeString)\" на:")
let replaceString = "ка"
print(replaceString)
print("Результат выполения программы:")
inputString.replace(changeString, with:replaceString)
print(inputString)
