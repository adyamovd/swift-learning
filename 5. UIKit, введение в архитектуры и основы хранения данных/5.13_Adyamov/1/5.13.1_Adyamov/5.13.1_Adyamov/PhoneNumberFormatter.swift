//
//  PhoneNumberFormatter.swift
//  5.13.1_Adyamov
//
//  Created by Диас Адямов  on 04.06.2025.
//

import UIKit

final class PhoneNumberFormatter {
    private let phoneRegex = "^\\+7\\s\\(\\d{0,3}\\)\\s?\\d{0,3}-?\\d{0,2}-?\\d{0,2}$"
    
    func format(_ input: String) -> String {
        let digits = input.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
        var result = "+7"
        
        if digits.count > 1 {
            let startIndex = digits.index(digits.startIndex, offsetBy: 1)
            let code = digits[startIndex...].prefix(3)
            result += " (\(code))"
            
            if code.count == 3 {
                let numberStartIndex = digits.index(startIndex, offsetBy: 3, limitedBy: digits.endIndex) ?? digits.endIndex
                let number = digits[numberStartIndex...].prefix(7)
                
                if number.count > 0 {
                    result += " \(number.prefix(3))"
                }
                if number.count > 3 {
                    result += "-\(number.dropFirst(3).prefix(2))"
                }
                if number.count > 5 {
                    result += "-\(number.dropFirst(5).prefix(2))"
                }
            }
        }
        
        let predicate = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        if predicate.evaluate(with: result) {
            return result
        }
        return input
    }
}
