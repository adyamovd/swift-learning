//
//  StyledButton.swift
//  5.10.2_Adyamov
//
//  Created by Диас Адямов  on 21.05.2025.
//

import UIKit

enum ButtonStyle {
    case filled
    case outlined
}

struct FilledStyleParameters {
    let backgroundColor: UIColor
    let shadowColor: UIColor
    let shadowOpacity: Float
    let shadowRadius: CGFloat
    let shadowOffset: CGSize
    
    static let defaultParemeters = FilledStyleParameters(
        backgroundColor: .systemBlue,
        shadowColor: .black,
        shadowOpacity: 0.3,
        shadowRadius: 4,
        shadowOffset: CGSize(width: 0, height: 2)
    )
}

struct OutlinedStyleParameters {
    let borderColor: UIColor
    let borderWidth: CGFloat
    let textColor: UIColor
    
    static let defaultParemeters = OutlinedStyleParameters(
        borderColor: .systemBlue,
        borderWidth: 2,
        textColor: .systemBlue
    )
}

class StyledButton: UIButton {
    
    private var filledParameters: FilledStyleParameters?
    private var outlinedParameters: OutlinedStyleParameters?
    
    init(text: String, style: ButtonStyle, filledParams: FilledStyleParameters? = nil, outlinedParams: OutlinedStyleParameters? = nil) {
        super.init(frame: .zero)
        self.setTitle(text, for: .normal)
        self.filledParameters = filledParams
        self.outlinedParameters = outlinedParams
        configureButton(style: style)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureButton(style: ButtonStyle) {
        layer.cornerRadius = 10
        titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        titleLabel?.textAlignment = .center
        
        switch style {
        case .filled:
            let params = filledParameters ?? .defaultParemeters
            configureFilledStyle(params: params)
        case .outlined:
            let params = outlinedParameters ?? .defaultParemeters
            configureOutlinedStyle(params: params)
        }
    }
    
    private func configureFilledStyle(params: FilledStyleParameters) {
        backgroundColor = params.backgroundColor
        setTitleColor(.black, for: .normal)
        
        layer.shadowColor = params.shadowColor.cgColor
        layer.shadowOpacity = params.shadowOpacity
        layer.shadowRadius = params.shadowRadius
        layer.shadowOffset = params.shadowOffset
    }
    
    private func configureOutlinedStyle(params: OutlinedStyleParameters) {
        backgroundColor = .clear
        layer.borderColor = params.borderColor.cgColor
        layer.borderWidth = params.borderWidth
        setTitleColor(params.textColor, for: .normal)
    }
}
