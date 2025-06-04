//
//  TextField.swift
//  5.13.1_Adyamov
//
//  Created by Диас Адямов  on 01.06.2025.
//

import UIKit

class BaseTextField: UITextField {
    private static let inset: CGFloat = 12
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        .init(width: UIView.noIntrinsicMetric, height: 44)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        .init(x: Self.inset, y: 0, width: max(0, bounds.width - Self.inset * 2), height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        .init(x: Self.inset, y: 0, width: max(0, bounds.width - Self.inset * 2), height: bounds.height)
    }
    
    func configAppearance(placeholder: String) {
        borderStyle = .none
        backgroundColor = .lightGray.withAlphaComponent(0.2)
        layer.cornerRadius = 12
        
        font = .systemFont(ofSize: 16, weight: .bold)
        textColor = .black
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [
            .font: UIFont.systemFont(ofSize: 16, weight: .regular),
            .foregroundColor: UIColor.darkGray
        ])
    }
}
