//
//  RootView.swift
//  5.2.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

final class RootView: UIView {
    
    private lazy var topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var centerLeftView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var centerRightView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var bottomLeftView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var bottomCenterView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var bottomRightView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemYellow
        configureSubviews()
        configureConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSubviews() {
        addSubview(topView)
        addSubview(centerLeftView)
        addSubview(centerRightView)
        addSubview(bottomLeftView)
        addSubview(bottomCenterView)
        addSubview(bottomRightView)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            topView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            topView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            topView.heightAnchor.constraint(equalToConstant: 40),
            
            centerLeftView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 12),
            centerLeftView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            centerLeftView.heightAnchor.constraint(equalToConstant: 90),
            centerLeftView.widthAnchor.constraint(equalTo: centerRightView.widthAnchor),
            
            centerRightView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 12),
            centerRightView.leadingAnchor.constraint(equalTo: centerLeftView.trailingAnchor, constant: 12),
            centerRightView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            centerRightView.heightAnchor.constraint(equalTo: centerLeftView.heightAnchor),
            
            bottomLeftView.topAnchor.constraint(equalTo: centerLeftView.bottomAnchor, constant: 24),
            bottomLeftView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            bottomLeftView.trailingAnchor.constraint(equalTo: bottomCenterView.leadingAnchor, constant: -12),
            bottomLeftView.heightAnchor.constraint(equalTo: bottomCenterView.heightAnchor),
            
            bottomCenterView.topAnchor.constraint(equalTo: centerLeftView.bottomAnchor, constant: 24),
            bottomCenterView.leadingAnchor.constraint(equalTo: bottomLeftView.trailingAnchor, constant: 12),
            bottomCenterView.trailingAnchor.constraint(equalTo: bottomRightView.leadingAnchor, constant: -12),
            bottomCenterView.widthAnchor.constraint(equalToConstant: 120),
            bottomCenterView.heightAnchor.constraint(equalToConstant: 120),
            
            bottomRightView.topAnchor.constraint(equalTo: centerLeftView.bottomAnchor, constant: 24),
            bottomRightView.leadingAnchor.constraint(equalTo: bottomCenterView.trailingAnchor, constant: 12),
            bottomRightView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            bottomRightView.heightAnchor.constraint(equalTo: bottomLeftView.heightAnchor),
            bottomRightView.widthAnchor.constraint(equalTo: bottomLeftView.widthAnchor)
        ])
    }
}
