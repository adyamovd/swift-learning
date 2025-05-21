//
//  StyledButton.FilledStyleParameters.swift
//  5.10.2_Adyamov
//
//  Created by Диас Адямов  on 21.05.2025.
//

import UIKit

extension StyledButton {
    struct FilledStyleParameters {
        let backgroundColor: UIColor
        let shadowColor: UIColor
        let shadowOpacity: Float
        let shadowRadius: CGFloat
        let shadowOffset: CGSize
        
        // Дефолтные параметры
        static let defaultParameter = FilledStyleParameters(
            backgroundColor: .systemBlue,
            shadowColor: .black,
            shadowOpacity: 0.3,
            shadowRadius: 4,
            shadowOffset: CGSize(width: 0, height: 2)
        )
    }
}
