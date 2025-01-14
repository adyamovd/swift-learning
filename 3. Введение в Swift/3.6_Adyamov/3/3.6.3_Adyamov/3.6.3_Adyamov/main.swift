//
//  main.swift
//  3.6.3_Adyamov
//
//  Created by Диас Адямов  on 13.01.2025.
//

import Foundation

print("Введите первое число")
func printSumm() {
    guard let firstText = readLine(), let firstInt = Int(firstText) else {
        print("Ошибка: вы не ввели число")
        return
    }
    print("Введите второе число")
    guard let secondText = readLine(), let secondInt = Int(secondText) else {
        print("Ошибка: вы не ввели число")
        return
    }
    print("Введите одну из операций:+,-,*,/")
    guard let thirdText = readLine() else {
        return
    }
    print("Результат:")
    switch thirdText {
    case "+":
        print(firstInt + secondInt)
    case "-":
        print(firstInt - secondInt)
    case "*":
        print(firstInt * secondInt)
    case "/" where secondInt == 0:
        print("На ноль делить нельзя")
    case "/":
        print(firstInt / secondInt)
    default:
        print("Введенная операция не поддерживается")
    }
}
printSumm()
