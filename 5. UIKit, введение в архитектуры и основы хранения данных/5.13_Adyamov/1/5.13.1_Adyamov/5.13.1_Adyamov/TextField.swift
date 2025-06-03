//
//  TextField.swift
//  5.13.1_Adyamov
//
//  Created by Диас Адямов  on 01.06.2025.
//

import UIKit

final class TextField: UITextField {
    private static let inset: CGFloat = 12
    private let phoneNumberFormatter = PhoneNumberFormatter()
    
    init(placeholder: String) {
        super.init(frame: .zero)
        configAppearance(placeholder: placeholder)
        if placeholder == "Номер телефона" {
            addTarget(self, action: #selector(formatPhoneNumber), for: .editingChanged)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        .init(width: frame.width, height: 44)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        .init(x: Self.inset, y: 0, width: bounds.width - Self.inset * 2, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        .init(x: Self.inset, y: 0, width: bounds.width - Self.inset * 2, height: bounds.height)
    }
    
    private func configAppearance(placeholder: String) {
        borderStyle = .none
        backgroundColor = .lightGray.withAlphaComponent(0.2)
        layer.cornerRadius = 12
        
        font = .systemFont(ofSize: 16, weight: .bold)
        textColor = .black
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [
            .font: UIFont.systemFont(ofSize: 16, weight: .regular),
            .foregroundColor: UIColor.darkGray
        ])
    }
    
    @objc private func formatPhoneNumber(_ textField: UITextField) {
        guard let text = textField.text else { return }
        textField.text = phoneNumberFormatter.format(text)
    }
}

private class PhoneNumberFormatter {
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
