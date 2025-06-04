//
//  NameTextField.swift
//  5.13.1_Adyamov
//
//  Created by Диас Адямов  on 04.06.2025.
//

import UIKit

final class NameTextField: BaseTextField {
    override init() {
        super.init()
        configAppearance(placeholder: "Имя")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
