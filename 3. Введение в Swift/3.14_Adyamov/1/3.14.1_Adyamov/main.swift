//
//  main.swift
//  3.14.1_Adyamov
//
//  Created by Диас Адямов  on 17.02.2025.
//

import Foundation
enum Operation {
    case addition
    case substraction
    case multiplication
    case division
}

enum CalculcationError: Error {
    case invalidOperation
    case invalidInput
    case divisionByZero
}

func getInputs() throws -> Int {
    guard let input = readLine(), let number = Int(input) else {
        throw CalculcationError.invalidInput
    }
    return number
}

func getOperation() throws -> Operation {
    guard let operationText = readLine() else {
        throw CalculcationError.invalidOperation
    }
    switch operationText {
    case "+":
        return .addition
    case "-":
        return .substraction
    case "*":
        return .multiplication
    case "/":
        return .division
    default:
        throw CalculcationError.invalidOperation
    }
}

func calculate() {
    var shouldRepeatProgram = true
    repeat {
        do {
            print("Введите первое число:")
            let firstInt = try getInputs()
            print("Введите второе число:")
            let secondInt = try getInputs()
            print("Введите одну из операций:+,-,*,/")
            let operation = try getOperation()
            var resultValue: Int?
            switch operation {
            case .addition:
                resultValue = firstInt + secondInt
            case .substraction:
                resultValue = firstInt - secondInt
            case .multiplication:
                resultValue = firstInt * secondInt
            case .division:
                guard secondInt != 0 else { print("На ноль делить нельзя")
                    continue }
                resultValue = firstInt / secondInt
            }
            print("Результат: \(resultValue!)")
        } catch CalculcationError.invalidInput {
            print("Ошибка: вы не ввели число")
        } catch CalculcationError.invalidOperation {
            print("Операция не поддерживается")
        } catch {
            print("Неизвестная ошибка")
        }
        
        print("Хотите начать заново? Введите 0 если да:")
        let shouldRepeat = readLine()
        shouldRepeatProgram = shouldRepeat == "0"
    } while shouldRepeatProgram == true
}

calculate()
