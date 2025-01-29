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
    var equality = true
    repeat {
            guard let guessText = readLine(), let guessValue = Int(guessText) else {
                print("Вы ввели не число, попробуйте еще раз")
                break
            }
        if guessValue > random {
            print("Нужно число меньше")
        } else if guessValue < random {
            print("Нужно число больше")
        } else {
            print ("Угадал")
        }
        equality = guessValue == random
    } while equality != true
}
randomguess()
