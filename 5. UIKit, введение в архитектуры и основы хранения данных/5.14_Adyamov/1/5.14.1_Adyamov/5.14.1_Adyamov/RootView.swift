//
//  RootView.swift
//  5.12.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

final class RootView: UIView {
    private let leftView1 = UIView()
    private let leftView2 = UIView()
    private let topRightView = UIView()
    private let middleView = UIView()
    private let bottomView1 = UIView()
    private let bottomView2 = UIView()
    private let topLeftStack = UIStackView()
    private let topStack = UIStackView()
    private let bottomStack = UIStackView()
    
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
        
        let mainStackView = UIStackView()
        mainStackView.axis = .vertical
        mainStackView.spacing = 10
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        
        topLeftStack.axis = .vertical
        topLeftStack.spacing = 10
        topLeftStack.distribution = .fillEqually
        topLeftStack.translatesAutoresizingMaskIntoConstraints = false
        
        leftView1.backgroundColor = .systemPink
        leftView1.layer.cornerRadius = 16
        leftView2.backgroundColor = .systemPink
        leftView2.layer.cornerRadius = 16
        topLeftStack.addArrangedSubview(leftView1)
        topLeftStack.addArrangedSubview(leftView2)
        
        topRightView.backgroundColor = .systemPink
        topRightView.layer.cornerRadius = 16
        topRightView.translatesAutoresizingMaskIntoConstraints = false
        
        topStack.axis = .horizontal
        topStack.spacing = 10
        topStack.distribution = .fill
        topStack.translatesAutoresizingMaskIntoConstraints = false
        topStack.addArrangedSubview(topLeftStack)
        topStack.addArrangedSubview(topRightView)
        
        middleView.backgroundColor = .systemPink
        middleView.layer.cornerRadius = 16
        middleView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomStack.axis = .horizontal
        bottomStack.spacing = 10
        bottomStack.distribution = .fillEqually
        bottomStack.translatesAutoresizingMaskIntoConstraints = false
        
        bottomView1.backgroundColor = .systemPink
        bottomView1.layer.cornerRadius = 16
        bottomView2.backgroundColor = .systemPink
        bottomView2.layer.cornerRadius = 16
        bottomStack.addArrangedSubview(bottomView1)
        bottomStack.addArrangedSubview(bottomView2)
        
        mainStackView.addArrangedSubview(topStack)
        mainStackView.addArrangedSubview(middleView)
        mainStackView.addArrangedSubview(bottomStack)
        
        addSubview(mainStackView)
    }
    
    private func configureConstraints() {
        guard let mainStackView = subviews.first as? UIStackView else {
            print("Ошибка")
            return
        }

        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            mainStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            mainStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            topLeftStack.heightAnchor.constraint(equalTo: topRightView.heightAnchor),

            topRightView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.45),

            topStack.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15),
           
            middleView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2),
            
            bottomStack.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2)
            
        ])
    }
}
