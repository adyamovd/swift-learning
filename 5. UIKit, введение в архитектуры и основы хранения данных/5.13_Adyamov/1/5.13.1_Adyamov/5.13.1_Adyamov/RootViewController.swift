//
//  RootViewController.swift
//  5.12.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

class RootViewController: UIViewController, UITextFieldDelegate {
    private let mainView = RootView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.textField.delegate = self
        mainView.phoneTextField.delegate = self
        mainView.sendButton.addTarget(self, action: #selector(sendButtonTapped), for: .touchUpInside)
        mainView.textField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        mainView.phoneTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        updateSendButtonState()
    }
    
    override func loadView() {
        view = mainView
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == mainView.textField {
            mainView.phoneTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
    
    @objc private func textFieldDidChange(_ textField: UITextField) {
        updateSendButtonState()
    }
    
    private func updateSendButtonState() {
        let isNameFilled = !(mainView.textField.text?.isEmpty ?? true)
        let isPhoneFilled = mainView.phoneTextField.isValid
        mainView.sendButton.isEnabled = isNameFilled && isPhoneFilled
        mainView.sendButton.alpha = mainView.sendButton.isEnabled ? 1.0 : 0.5
    }
    
    @objc private func sendButtonTapped() {
        guard let name = mainView.textField.text,
              let phone = mainView.phoneTextField.text else { return }
        
        print("Отправлено - Имя: \(name), Телефон: \(phone)")
        
        mainView.textField.text = ""
        mainView.phoneTextField.text = ""
        updateSendButtonState()
        mainView.textField.becomeFirstResponder()
    }
}
