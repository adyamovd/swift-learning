//
//  main.swift
//  3.11.3_Adyamov
//
//  Created by Диас Адямов  on 25.01.2025.
//

import Foundation

var random = Int.random(in: 0...10)
print(random)
let fixedRandom = random
print(fixedRandom)
repeat {
    guard let guessText = readLine(), let guessValue = Int(guessText) else {
        if guessValue > fixedRandom {
            print("Меньше")
        } else {
            print("Больше")
        }
    }
} while guessValue != fixedRandom

// брат, два вопроса:
// как зафиксировать рандомное значение которое мне выдается на первом шаге?
// и как пофиксить ситуацию с переменной ахах, на мой взгляд должно работать если это пофиксить
