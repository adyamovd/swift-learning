//
//  RootView.swift
//  5.10.2_Adyamov
//
//  Created by Диас Адямов  on 21.05.2025.
//


import UIKit

final class RootView: UIView {
    
    private let filledDefaultButton = StyledButton(
        text: "Тапни меня!",
        style: .filled(.defaultParameter)
    )
    
    private let filledCustomButton = StyledButton(
        text: "Тапни меня!",
        style: .filled(.init(
            backgroundColor: .systemGreen,
            shadowColor: .gray,
            shadowOpacity: 0.5,
            shadowRadius: 6,
            shadowOffset: CGSize(width: 2, height: 4)
        ))
    )
    
    private let outlinedDefaultButton = StyledButton(
        text: "Тапни меня!",
        style: .outlined(.defaultParameter)
    )
    
    let outlinedCustomButton = StyledButton(
        text: "Тапни меня!",
        style: .outlined(.init(
            borderColor: .systemRed,
            borderWidth: 4,
            textColor: .systemRed
        ))
    )
    
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
        addSubview(filledDefaultButton)
        addSubview(filledCustomButton)
        addSubview(outlinedDefaultButton)
        addSubview(outlinedCustomButton)
        
        filledDefaultButton.translatesAutoresizingMaskIntoConstraints = false
        filledCustomButton.translatesAutoresizingMaskIntoConstraints = false
        outlinedDefaultButton.translatesAutoresizingMaskIntoConstraints = false
        outlinedCustomButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func configureConstraints() {
        let buttonWidth: CGFloat = 200
        let buttonHeight: CGFloat = 44
        let spacing: CGFloat = 20
        
        NSLayoutConstraint.activate([
            filledDefaultButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            filledDefaultButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -(buttonHeight * 1.5 + spacing)),
            filledDefaultButton.widthAnchor.constraint(equalToConstant: buttonWidth),
            filledDefaultButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            
            filledCustomButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            filledCustomButton.topAnchor.constraint(equalTo: filledDefaultButton.bottomAnchor, constant: spacing),
            filledCustomButton.widthAnchor.constraint(equalToConstant: buttonWidth),
            filledCustomButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            
            outlinedDefaultButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            outlinedDefaultButton.topAnchor.constraint(equalTo: filledCustomButton.bottomAnchor, constant: spacing),
            outlinedDefaultButton.widthAnchor.constraint(equalToConstant: buttonWidth),
            outlinedDefaultButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            
            outlinedCustomButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            outlinedCustomButton.topAnchor.constraint(equalTo: outlinedDefaultButton.bottomAnchor, constant: spacing),
            outlinedCustomButton.widthAnchor.constraint(equalToConstant: buttonWidth),
            outlinedCustomButton.heightAnchor.constraint(equalToConstant: buttonHeight)
        ])
    }
}
