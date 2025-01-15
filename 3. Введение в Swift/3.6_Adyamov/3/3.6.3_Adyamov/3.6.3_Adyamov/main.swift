//
//  main.swift
//  3.6.3_Adyamov
//
//  Created by Диас Адямов  on 13.01.2025.
//

import Foundation

func calculate() {
    print("Введите первое число")
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
    var resultValue: Int?
    switch thirdText {
    case "+":
        resultValue = firstInt + secondInt
    case "-":
        resultValue = firstInt - secondInt
    case "*":
        resultValue = firstInt * secondInt
    case "/" where secondInt == 0:
        print("На ноль делить нельзя")
        break
    case "/":
        resultValue = firstInt / secondInt
    default:
        print("Введенная операция не поддерживается")
        break
    }
    guard let resultValue : Int else {
        return
    }
    print("Результат:")
    print(resultValue)
}
calculate()
