//
//  RootView.swift
//  5.15.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

final class RootView: UIView {
   
    private lazy var actionButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.background.backgroundColor = .systemBlue
        config.background.cornerRadius = 16
        config.attributedTitle = .init("Переход на 2 экран", attributes: .init([.foregroundColor: UIColor.white]))
        config.contentInsets.top = 20
        config.contentInsets.bottom = 20
       
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
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
    
    var buttonAction: (() -> Void)?
    
    @objc
    private func buttonPressed() {
        buttonAction?()
    }
    
    private func configureSubviews() {
        addSubview(actionButton)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            actionButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            actionButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }
}
