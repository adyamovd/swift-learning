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
    
    private lazy var bottomRightView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private lazy var label1: UILabel = {
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "ТекстТекст"
        label1.numberOfLines = 4
        label1.font = UIFont.systemFont(ofSize: 22)
        return label1
    }()
    
    private lazy var label2: UILabel = {
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = "ТекстТекст"
        return label2
    }()
    
    private lazy var label3: UILabel = {
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.text = "Текст22222323232"
        return label3
    }()
    
    private lazy var label4: UILabel = {
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.numberOfLines = 0
        var attributedString = NSMutableAttributedString()
        
        let firstString = NSMutableAttributedString(string: "Ваш текст, который нужно", attributes: [
            .foregroundColor: UIColor.red,
            .font: UIFont.systemFont(ofSize: 23)
        ])
        
        let secondString = NSMutableAttributedString(string: " будет разбить на несколько строк", attributes: [
            .strikethroughStyle: 1,
            .foregroundColor: UIColor.blue,
            .font: UIFont.systemFont(ofSize: 20)
        ])
        attributedString.append(firstString)
        attributedString.append(secondString)
        
        label4.attributedText = attributedString
        label4.lineBreakMode = .byWordWrapping
        return label4
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
        addSubview(bottomRightView)
        topView.addSubview(label1)
        centerLeftView.addSubview(label2)
        bottomRightView.addSubview(label3)
        addSubview(label4)
    }
    
    private func configureConstraints() {
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            topView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            topView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            topView.heightAnchor.constraint(equalToConstant: 60),
            
            centerLeftView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 12),
            centerLeftView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            centerLeftView.trailingAnchor.constraint(lessThanOrEqualTo: trailingAnchor, constant: -16),
            centerLeftView.heightAnchor.constraint(equalTo: topView.heightAnchor),
            centerLeftView.widthAnchor.constraint(greaterThanOrEqualTo: label2.widthAnchor),
            
            bottomRightView.topAnchor.constraint(equalTo: centerLeftView.bottomAnchor, constant: 12),
            bottomRightView.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor, constant: 16),
            bottomRightView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            bottomRightView.heightAnchor.constraint(equalTo: topView.heightAnchor),
            bottomRightView.widthAnchor.constraint(greaterThanOrEqualTo: label3.widthAnchor),
            
            label1.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 16),
            label1.topAnchor.constraint(equalTo: topView.topAnchor, constant: 16),
            label1.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: 16),
            label1.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -16),
        
            label2.leadingAnchor.constraint(equalTo: centerLeftView.leadingAnchor, constant: 16),
            label2.topAnchor.constraint(equalTo: centerLeftView.topAnchor, constant: 16),
            label2.trailingAnchor.constraint(equalTo: centerLeftView.trailingAnchor, constant: -16),
            label2.bottomAnchor.constraint(equalTo: centerLeftView.bottomAnchor, constant: -16),
            
            label3.leadingAnchor.constraint(equalTo: bottomRightView.leadingAnchor, constant: 16),
            label3.topAnchor.constraint(equalTo: bottomRightView.topAnchor, constant: 16),
            label3.trailingAnchor.constraint(equalTo: bottomRightView.trailingAnchor, constant: -16),
            label3.bottomAnchor.constraint(equalTo: bottomRightView.bottomAnchor, constant: -16),
            
            label4.topAnchor.constraint(equalTo: bottomRightView.bottomAnchor, constant: 12),
            label4.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
            label4.trailingAnchor.constraint(lessThanOrEqualTo: topView.trailingAnchor)
        ])
    }
    
}
