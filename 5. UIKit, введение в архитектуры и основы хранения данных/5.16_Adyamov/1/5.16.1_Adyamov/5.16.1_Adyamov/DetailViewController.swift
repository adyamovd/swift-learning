//
//  DetailViewController.swift
//  5.16.1_Adyamov
//
//  Created by Диас Адямов  on 19.07.2025.
//

import UIKit

protocol DetailViewControllerDelegate: AnyObject {
    func detailViewControllerDidTapOnCloseButton()
}

class DetailViewController: UIViewController {
    
    private let mainView = DetailView()
    private let inputValue: String
    
    weak var delegate: DetailViewControllerDelegate?
    
    init(inputValue: String) {
        self.inputValue = inputValue
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.buttonAction = { [weak self] in
            self?.delegate?.detailViewControllerDidTapOnCloseButton()
        }
        
        mainView.buttonClosed = { [weak self] in
            self?.dismiss(animated: true)
        }
    }
    override func loadView() {
        view = mainView
    }
    
}

