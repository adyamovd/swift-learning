//
//  RootView.swift
//  5.4.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

final class CustomTextView: UITextView {
    
    private let maxHeight: CGFloat = 120
    
    override var contentSize: CGSize {
        didSet {
            var newHeight = contentSize.height
            if newHeight > maxHeight {
                newHeight = maxHeight
                isScrollEnabled = true
            } else {
                isScrollEnabled = false
            }
            frame.size.height = newHeight
        }
    }
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        backgroundColor = .white
        textContainerInset = .init(top: 16, left: 16, bottom: 16, right: 16)
        font = UIFont.systemFont(ofSize: 22)
        isEditable = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

final class RootView: UIView {
    
    private lazy var topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var textView: CustomTextView = {
        let textView = CustomTextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
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
        addSubview(topView)
        topView.addSubview(textView) 
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            topView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            topView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            textView.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
            textView.topAnchor.constraint(equalTo: topView.topAnchor),
            textView.trailingAnchor.constraint(equalTo: topView.trailingAnchor),
            textView.bottomAnchor.constraint(equalTo: topView.bottomAnchor),
            textView.heightAnchor.constraint(lessThanOrEqualToConstant: 120)
        ])
    }
}
