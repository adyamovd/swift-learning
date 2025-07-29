//
//  RootView.swift
//  5.15.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

final class RootView: UIView {
   
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
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
        ])
    }
}
