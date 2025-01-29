//
//  main.swift
//  3.11.2_Adyamov
//
//  Created by Диас Адямов  on 25.01.2025.
//

import Foundation

func calculate() {
    var shouldRepeatProgram = true
    repeat {
        print("Введите первое число")
        guard let firstText = readLine(), let firstInt = Int(firstText) else {
            print("Ошибка: вы не ввели число")
            continue
        }
        print("Введите второе число")
        guard let secondText = readLine(), let secondInt = Int(secondText) else {
            print("Ошибка: вы не ввели число")
            continue
        }
        print("Введите одну из операций:+,-,*,/")
        guard let thirdText = readLine() else {
            continue
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
            continue
        }
        guard let resultValue else {
            continue
        }
        print("Результат:")
        print(resultValue)
        print("Хотите начать заново? Введите 0 если да:")
        let shouldRepeat = readLine()
        shouldRepeatProgram = shouldRepeat == "0"
    } while shouldRepeatProgram == true
}
calculate()
