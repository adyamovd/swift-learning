//
//  RootViewController.swift
//  5.5.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

class RootViewController: UIViewController {
    
    private let mainView = RootView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.buttonAction = { [weak self] in
            let vc = DetailViewController(inputValue: "123")
            vc.delegate = self
            self?.present(vc, animated: true)
        }
    }
    
    override func loadView() {
        view = mainView
    }
}

extension RootViewController: DetailViewControllerDelegate {
    
    func detailViewControllerDidTapOnCloseButton() {
        let randomColor = UIColor(
        red: CGFloat.random(in: 0...1),
        green: CGFloat.random(in: 0...1),
        blue: CGFloat.random(in: 0...1),
        alpha: 1.0
        )
        mainView.backgroundColor = randomColor
    }
}
