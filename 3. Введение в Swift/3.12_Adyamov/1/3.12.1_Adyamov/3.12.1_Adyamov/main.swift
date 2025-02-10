//
//  main.swift
//  3.12.1_Adyamov
//
//  Created by Диас Адямов  on 26.01.2025.
//

import Foundation

func getInputNumber() -> Int? {
    print("Введите длину пароля (минимум 3 символа):")
    
    if let input = readLine(), let length = Int(input), length >= 3 {
        return length
    } else {
        print("Введите число большее, либо равное трем")
        return nil
    }
}
func makePassword(passwordLength: Int) -> String {
    let digitsCount = Int.random(in: 1...(passwordLength - 3))
    let alphabetCount = Int.random(in: 1...(passwordLength - digitsCount))
    let specialsCount = passwordLength - digitsCount - alphabetCount
    var password = ""
    var remainingDigits = digitsCount
    var remainingAlphabets = alphabetCount
    var remainingSpecials = specialsCount
    for _ in 0..<passwordLength {
        var options: [Int] = []
        if remainingDigits > 0 { options.append(1) }
        if remainingAlphabets > 0 { options.append(2) }
        if remainingSpecials > 0 { options.append(3) }
        if options.isEmpty { break }
        let randomChoice = options.randomElement()!
        switch randomChoice {
        case 1:
            let randomNumber = String(Int.random(in: 0...9))
            password.append(randomNumber)
            remainingDigits -= 1
        case 2:
            let randomLetter = String(UnicodeScalar(Int.random(in: 97...122))!)
            password.append(randomLetter)
            remainingAlphabets -= 1
        case 3:
            let specialCharacters = "!@#$%^&*()"
            let randomSpecial = specialCharacters.randomElement()!
            password.append(randomSpecial)
            remainingSpecials -= 1
        default:
            break
        }
    }
    return password
}
if let length = getInputNumber() {
    let password = makePassword(passwordLength: length)
    print("Сгенерированный пароль: \(password)")
}
