//
//  RootView.swift
//  5.15.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

final class RootView: UIView {
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let topStack1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let topLeftStack1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let topRightView1: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let middleView1: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let bottomStack1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let leftView1_1: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        return view
    }()
    
    private let leftView1_2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        return view
    }()
    
    private let bottomView1_1: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        return view
    }()
    
    private let bottomView1_2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        return view
    }()
    
    private let topStack2: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let topLeftStack2: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let topRightView2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let middleView2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let bottomStack2: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private let leftView2_1: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        return view
    }()
    
    private let leftView2_2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        return view
    }()
    
    private let bottomView2_1: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        return view
    }()
    
    private let bottomView2_2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        view.layer.cornerRadius = 16
        return view
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
        addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(mainStackView)
        
        topLeftStack1.addArrangedSubview(leftView1_1)
        topLeftStack1.addArrangedSubview(leftView1_2)
        topStack1.addArrangedSubview(topLeftStack1)
        topStack1.addArrangedSubview(topRightView1)
        bottomStack1.addArrangedSubview(bottomView1_1)
        bottomStack1.addArrangedSubview(bottomView1_2)
        
        topLeftStack2.addArrangedSubview(leftView2_1)
        topLeftStack2.addArrangedSubview(leftView2_2)
        topStack2.addArrangedSubview(topLeftStack2)
        topStack2.addArrangedSubview(topRightView2)
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
