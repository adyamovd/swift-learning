//
//  main.swift
//  3.11.2_Adyamov
//
//  Created by Диас Адямов  on 25.01.2025.
//

import Foundation

func calculate() {
    repeat {
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
    } while firstText != "", secondText != "", thirdText != ""
    }
calculate()


// практически уверен, что нужно использовать цикл репит вайл, но все мои попытки были тщетны, зе телом цикла не видит переменные, но думаю логика такая должна быть. Пытался двигать репит и вайл вверх и вниз соответственно, тоже работает некорректно
