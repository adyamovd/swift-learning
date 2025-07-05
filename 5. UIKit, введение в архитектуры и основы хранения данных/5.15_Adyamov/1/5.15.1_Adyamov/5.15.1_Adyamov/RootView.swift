//
//  RootView.swift
//  5.15.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

final class RootView: UIView {
    private let scrollView = UIScrollView()
    private let contentView = UIView()
    private let mainStackView = UIStackView()
    
    private let topStack1 = UIStackView()
    private let topLeftStack1 = UIStackView()
    private let topRightView1 = UIView()
    private let middleView1 = UIView()
    private let bottomStack1 = UIStackView()
    private let leftView1_1 = UIView()
    private let leftView1_2 = UIView()
    private let bottomView1_1 = UIView()
    private let bottomView1_2 = UIView()
    
    private let topStack2 = UIStackView()
    private let topLeftStack2 = UIStackView()
    private let topRightView2 = UIView()
    private let middleView2 = UIView()
    private let bottomStack2 = UIStackView()
    private let leftView2_1 = UIView()
    private let leftView2_2 = UIView()
    private let bottomView2_1 = UIView()
    private let bottomView2_2 = UIView()

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
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(scrollView)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(contentView)
        
        mainStackView.axis = .vertical
        mainStackView.spacing = 10
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(mainStackView)
        
        topLeftStack1.axis = .vertical
        topLeftStack1.spacing = 10
        topLeftStack1.distribution = .fillEqually
        topLeftStack1.translatesAutoresizingMaskIntoConstraints = false
        
        leftView1_1.backgroundColor = .systemPink
        leftView1_1.layer.cornerRadius = 16
        leftView1_2.backgroundColor = .systemPink
        leftView1_2.layer.cornerRadius = 16
        topLeftStack1.addArrangedSubview(leftView1_1)
        topLeftStack1.addArrangedSubview(leftView1_2)
        
        topRightView1.backgroundColor = .systemPink
        topRightView1.layer.cornerRadius = 16
        topRightView1.translatesAutoresizingMaskIntoConstraints = false
        
        topStack1.axis = .horizontal
        topStack1.spacing = 10
        topStack1.distribution = .fill
        topStack1.translatesAutoresizingMaskIntoConstraints = false
        topStack1.addArrangedSubview(topLeftStack1)
        topStack1.addArrangedSubview(topRightView1)
        
        middleView1.backgroundColor = .systemPink
        middleView1.layer.cornerRadius = 16
        middleView1.translatesAutoresizingMaskIntoConstraints = false
        
        bottomStack1.axis = .horizontal
        bottomStack1.spacing = 10
        bottomStack1.distribution = .fillEqually
        bottomStack1.translatesAutoresizingMaskIntoConstraints = false
        
        bottomView1_1.backgroundColor = .systemPink
        bottomView1_1.layer.cornerRadius = 16
        bottomView1_2.backgroundColor = .systemPink
        bottomView1_2.layer.cornerRadius = 16
        bottomStack1.addArrangedSubview(bottomView1_1)
        bottomStack1.addArrangedSubview(bottomView1_2)
        
        topLeftStack2.axis = .vertical
        topLeftStack2.spacing = 10
        topLeftStack2.distribution = .fillEqually
        topLeftStack2.translatesAutoresizingMaskIntoConstraints = false
        
        leftView2_1.backgroundColor = .systemPink
        leftView2_1.layer.cornerRadius = 16
        leftView2_2.backgroundColor = .systemPink
        leftView2_2.layer.cornerRadius = 16
        topLeftStack2.addArrangedSubview(leftView2_1)
        topLeftStack2.addArrangedSubview(leftView2_2)
        
        topRightView2.backgroundColor = .systemPink
        topRightView2.layer.cornerRadius = 16
        topRightView2.translatesAutoresizingMaskIntoConstraints = false
        
        topStack2.axis = .horizontal
        topStack2.spacing = 10
        topStack2.distribution = .fill
        topStack2.translatesAutoresizingMaskIntoConstraints = false
        topStack2.addArrangedSubview(topLeftStack2)
        topStack2.addArrangedSubview(topRightView2)
        
        middleView2.backgroundColor = .systemPink
        middleView2.layer.cornerRadius = 16
        middleView2.translatesAutoresizingMaskIntoConstraints = false
        
        bottomStack2.axis = .horizontal
        bottomStack2.spacing = 10
        bottomStack2.distribution = .fillEqually
        bottomStack2.translatesAutoresizingMaskIntoConstraints = false
        
        bottomView2_1.backgroundColor = .systemPink
        bottomView2_1.layer.cornerRadius = 16
        bottomView2_2.backgroundColor = .systemPink
        bottomView2_2.layer.cornerRadius = 16
        bottomStack2.addArrangedSubview(bottomView2_1)
        bottomStack2.addArrangedSubview(bottomView2_2)
        
        mainStackView.addArrangedSubview(topStack1)
        mainStackView.addArrangedSubview(middleView1)
        mainStackView.addArrangedSubview(bottomStack1)
        mainStackView.addArrangedSubview(topStack2)
        mainStackView.addArrangedSubview(middleView2)
        mainStackView.addArrangedSubview(bottomStack2)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([

            scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            mainStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            mainStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            mainStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            mainStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            
            topStack1.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15),
            topLeftStack1.heightAnchor.constraint(equalTo: topRightView1.heightAnchor),
            topRightView1.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.45),
            middleView1.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2),
            bottomStack1.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2),
            
            topStack2.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15),
            topLeftStack2.heightAnchor.constraint(equalTo: topRightView2.heightAnchor),
            topRightView2.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.45),
            middleView2.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2),
            bottomStack2.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2)
        ])
    }
}
