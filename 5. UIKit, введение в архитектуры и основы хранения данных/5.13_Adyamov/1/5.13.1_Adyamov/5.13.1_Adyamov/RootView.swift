//
//  RootView.swift
//  5.12.1_Adyamov
//
//  Created by Диас Адямов on 06.04.2025.
//

import UIKit

final class RootView: UIView {
    lazy var textField: TextField = {
        let textField = TextField(placeholder: "Имя")
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.returnKeyType = .next
        return textField
    }()
    
    lazy var phoneTextField: TextField = {
        let textField = TextField(placeholder: "Номер телефона")
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.returnKeyType = .done
        textField.keyboardType = .phonePad
        return textField
    }()
    
    lazy var sendButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Отправить", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isEnabled = false
        button.alpha = 0.5
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        configureSubviews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSubviews() {
        addSubview(textField)
        addSubview(phoneTextField)
        addSubview(sendButton)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            textField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            textField.heightAnchor.constraint(equalToConstant: 44),
            
            phoneTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            phoneTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            phoneTextField.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 16),
            phoneTextField.heightAnchor.constraint(equalToConstant: 44),
            
            sendButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            sendButton.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 16),
            sendButton.heightAnchor.constraint(equalToConstant: 44),
            sendButton.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
}
