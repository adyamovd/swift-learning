//
//  DetailView.swift
//  5.16.1_Adyamov
//
//  Created by Диас Адямов  on 19.07.2025.
//

import UIKit

final class DetailView: UIView {
    
    private lazy var changeCollorButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.background.backgroundColor = .systemBlue
        config.background.cornerRadius = 16
        config.attributedTitle = .init("Change color", attributes: .init([.foregroundColor: UIColor.white]))
        config.contentInsets.top = 20
        config.contentInsets.bottom = 20
        
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    private lazy var closeButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.background.backgroundColor = .systemBlue
        config.background.cornerRadius = 16
        config.attributedTitle = .init("Close", attributes: .init([.foregroundColor: UIColor.white]))
        config.contentInsets.top = 20
        config.contentInsets.bottom = 20
  
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonClosedPressed), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemPink
        
        configureSubviews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var buttonAction: (() -> Void)?
    var buttonClosed: (() -> Void)?
    
    @objc
    private func buttonPressed() {
        buttonAction?()
    }
    
    @objc
    private func buttonClosedPressed() {
        buttonClosed?()
    }
    
    private func configureSubviews() {
        addSubview(changeCollorButton)
        addSubview(closeButton)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            changeCollorButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor, constant: 0),
            changeCollorButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            changeCollorButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            
            closeButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -16),
            closeButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            closeButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
        ])
    }
}
