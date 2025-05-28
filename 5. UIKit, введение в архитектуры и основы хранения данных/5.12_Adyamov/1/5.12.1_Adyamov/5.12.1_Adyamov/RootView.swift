//
//  RootView.swift
//  5.12.1_Adyamov
//
//  Created by Диас Адямов on 06.04.2025.
//

import UIKit

final class RootView: UIView {
    private let button = UIButton(type: .system)
    private let loadingView = CustomLoadingView()

    var buttonAction: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemPink
        configureSubviews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSubviews() {
        button.setTitle("Start Loading", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        addSubview(button)
        
        loadingView.translatesAutoresizingMaskIntoConstraints = false
        loadingView.isHidden = true
        addSubview(loadingView)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 50),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50),
            
            loadingView.centerXAnchor.constraint(equalTo: centerXAnchor),
            loadingView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -50),
            loadingView.widthAnchor.constraint(equalToConstant: 80),
            loadingView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    @objc private func buttonTapped() {
        buttonAction?()
    }
    
    func updateButton(isLoading: Bool) {
        button.setTitle(isLoading ? "Stop Loading" : "Start Loading", for: .normal)
        UIView.animate(withDuration: 0.3) {
            self.button.transform = isLoading ? CGAffineTransform(scaleX: 0.92, y: 0.92) : .identity
        }
    }
    
    func startLoadingAnimation() {
        loadingView.startAnimating()
    }
    
    func stopLoadingAnimation() {
        loadingView.stopAnimating()
    }
}
