//
//  StyledButton.swift
//  5.10.2_Adyamov
//
//  Created by Диас Адямов  on 21.05.2025.
//

import UIKit

final class StyledButton: UIButton {
    
    // Инициализатор с ассоциативным стилем
    init(text: String, style: ButtonStyle) {
        super.init(frame: .zero)
        setTitle(text, for: .normal)
        configureButton(style: style)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Настройка внешнего вида кнопки
    private func configureButton(style: ButtonStyle) {
        // Общие настройки для всех стилей
        layer.cornerRadius = 10
        titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        
        switch style {
        case .filled(let params):
            configureFilledStyle(params: params)
        case .outlined(let params):
            configureOutlinedStyle(params: params)
        }
    }
    
    // Настройка стиля заливки
    private func configureFilledStyle(params: FilledStyleParameters) {
        backgroundColor = params.backgroundColor
        setTitleColor(.black, for: .normal)
        
        // Настройка тени
        layer.shadowColor = params.shadowColor.cgColor
        layer.shadowOpacity = params.shadowOpacity
        layer.shadowRadius = params.shadowRadius
        layer.shadowOffset = params.shadowOffset
    }
    
    // Настройка стиля обводки
    private func configureOutlinedStyle(params: OutlinedStyleParameters) {
        backgroundColor = .clear
        layer.borderColor = params.borderColor.cgColor
        layer.borderWidth = params.borderWidth
        setTitleColor(params.textColor, for: .normal)
    }
}
