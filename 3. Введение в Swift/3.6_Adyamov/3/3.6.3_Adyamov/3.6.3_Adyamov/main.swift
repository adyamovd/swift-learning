//
//  main.swift
//  3.6.3_Adyamov
//
//  Created by Диас Адямов  on 13.01.2025.
//

import Foundation

print("Введите первое число")
let firstText = readLine()
print("Введите второе число")
let secondText = readLine()
print("Введите одну из операций:+,-,*,/")
let thirdText = readLine()
print("Результат:")
var firstValue = Int(firstText!) ?? 0
var secondValue = Int(secondText!) ?? 0
var thirdValue = Int(thirdText!) ?? 0
var resultValue = firstValue; thirdValue; secondValue
print(resultValue)
