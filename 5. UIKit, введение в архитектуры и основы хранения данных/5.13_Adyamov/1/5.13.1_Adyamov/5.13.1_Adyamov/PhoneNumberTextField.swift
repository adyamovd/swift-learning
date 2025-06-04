//
//  PhoneNumberTextField.swift
//  5.13.1_Adyamov
//
//  Created by Диас Адямов  on 04.06.2025.
//

import UIKit

final class PhoneNumberTextField: BaseTextField {
    private let formatter = PhoneNumberFormatter()
    
    var isValid: Bool {
        guard let text = text else { return false }
        let digits = text.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()
        return digits.count == 11
    }
    
    override init() {
        super.init()
        configAppearance(placeholder: "Номер телефона")
        keyboardType = .phonePad
        autocorrectionType = .no
        smartInsertDeleteType = .no
        addTarget(self, action: #selector(formatPhoneNumber), for: .editingChanged)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func formatPhoneNumber(_ textField: UITextField) {
        guard let text = textField.text else { return }
        textField.text = formatter.format(text)
    }
}
