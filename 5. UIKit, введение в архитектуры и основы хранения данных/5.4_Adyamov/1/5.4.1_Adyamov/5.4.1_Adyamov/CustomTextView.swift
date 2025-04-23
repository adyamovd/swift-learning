//
//  CustomTextView.swift
//  5.4.1_Adyamov
//
//  Created by Диас Адямов  on 23.04.2025.
//

import UIKit

final class CustomTextView: UITextView {
    
    private let maxHeight: CGFloat = 120
    private var heightConstraint: NSLayoutConstraint?
    
    override var contentSize: CGSize {
        didSet {
            isScrollEnabled = contentSize.height > maxHeight
        }
    }
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        backgroundColor = .white
        textContainerInset = .init(top: 16, left: 16, bottom: 16, right: 16)
        font = UIFont.systemFont(ofSize: 22)
        isEditable = true
        heightConstraint = heightAnchor.constraint(lessThanOrEqualToConstant: maxHeight)
        heightConstraint?.isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
