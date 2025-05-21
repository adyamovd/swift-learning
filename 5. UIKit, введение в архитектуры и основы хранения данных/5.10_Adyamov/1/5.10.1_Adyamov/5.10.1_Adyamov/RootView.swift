//
//  RootView.swift
//  5.5.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

final class RootView: UIView {
    
    private lazy var view: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 100
        view.backgroundColor = .blue
        view.layer.borderWidth = 5
        view.layer.borderColor = UIColor.red.cgColor
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: 10, height: 20)
        view.layer.shadowRadius = 10
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemYellow
        configureSubviews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSubviews() {
        addSubview(view)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            view.centerYAnchor.constraint(equalTo: centerYAnchor),
            view.centerXAnchor.constraint(equalTo: centerXAnchor),
            view.widthAnchor.constraint(equalToConstant: 200),
            view.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
}
