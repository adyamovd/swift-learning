//
//  main.swift
//  3.12.1_Adyamov
//
//  Created by Диас Адямов  on 26.01.2025.
//

import Foundation

func password(length: Int) -> String {
    let letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "g", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    let digits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    let specialCharacters = ["!", "@", "$", "%", "^", "&", "*", "(", ")"]
    let randomLetter = letters.randomElement()
    let randomDigit = digits.randomElement()
    let randomSpecialCharacter = specialCharacters.randomElement()
    var password = [randomLetter, randomDigit, randomSpecialCharacter]
    let allCharacters = letters + digits + specialCharacters
    password.append(allCharacters.randomElement())
    // вот тут не могу придумать как мне соединить c тем что введет пользак сколько надо аппендить элементов
    var shouldAppend = false
    print ("Введите длину пароля:")
    repeat {
        if let userInput = readLine(), let length = Int(userInput), length >= 4 {
            print("Сгенерированный пароль: \(password)")
            shouldAppend = false
        } else {
            print("Некорректная длина пароля")
            shouldAppend = true
            // тут из прошлого урока попробовал промутить цикл задав переменную за его пределами, это если нас не устроит что ввел пользак
        }
    } while shouldAppend == true
    return password
    // вижу что пассворд это опциональный стринг, который наверно нужно раскрыть, ну правильно ли я размышляю вовзращая password в принципе?
}
