//
//  StyledButton.OutlinedStyleParameters.swift
//  5.10.2_Adyamov
//
//  Created by Диас Адямов  on 21.05.2025.
//

import UIKit

extension StyledButton {
    struct OutlinedStyleParameters {
        let borderColor: UIColor
        let borderWidth: CGFloat
        let textColor: UIColor
        
        // Дефолтные параметры
        static let defaultParameter = OutlinedStyleParameters(
            borderColor: .systemBlue,
            borderWidth: 2,
            textColor: .systemBlue
        )
    }
}
