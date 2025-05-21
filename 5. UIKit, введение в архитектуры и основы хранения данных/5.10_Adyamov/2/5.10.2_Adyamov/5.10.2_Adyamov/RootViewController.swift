//
//  RootViewController.swift
//  5.10.2_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

class RootViewController: UIViewController {
    
    private let mainView = RootView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        view = mainView
    }
    
}

