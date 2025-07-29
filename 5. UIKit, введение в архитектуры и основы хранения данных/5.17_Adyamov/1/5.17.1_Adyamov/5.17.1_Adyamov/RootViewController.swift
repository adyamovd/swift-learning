//
//  RootViewController.swift
//  5.5.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

class RootViewController: UIViewController {
    
    private let mainView = RootView()
    
    private lazy var actionButton: UIButton = {
        var config = UIButton.Configuration.filled()
        config.background.backgroundColor = .systemBlue
        config.background.cornerRadius = 8
        config.attributedTitle = .init("2 экран", attributes: .init([.foregroundColor: UIColor.white]))
        config.contentInsets.top = 2
        config.contentInsets.bottom = 2
        
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Detailed VC"
        navigationItem.rightBarButtonItem = .init(customView: actionButton)
    }
    
    override func loadView() {
        view = mainView
    }
    
    @objc
    private func buttonPressed() {
        let vc = DetailViewController(inputValue: "123")
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
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
