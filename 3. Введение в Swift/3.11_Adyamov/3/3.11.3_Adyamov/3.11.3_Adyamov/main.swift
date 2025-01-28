//
//  main.swift
//  3.11.3_Adyamov
//
//  Created by Диас Адямов  on 25.01.2025.
//

import Foundation

let random = Int.random(in: 0...10)
print(random)
print("Отгадайте число:")
func randomguess() {
    var equality: Bool = true
    var guessValueIsInt: Bool = true
    repeat {
        guard let guessText = readLine(), let guessValue = Int(guessText) else {
            print("Вы ввели не число, попробуйте еще раз")
            continue
        }
        if guessValue > random {
            equality = false
            print("Нужно число меньше")
        } else if guessValue < random {
            equality = false
            print("Нужно число больше")
        } else {
            equality = true
            print ("Угадал")
        }
    } while equality != true
}
randomguess()
