//
//  RootViewController.swift
//  5.12.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

class RootViewController: UIViewController {
    private var mainView: RootView! {
        return view as? RootView
    }
    private var isLoading = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupActions()
    }
    
    override func loadView() {
        view = RootView()
    }
    
    private func setupActions() {
        mainView.buttonAction = { [weak self] in
            self?.handleButtonTap()
        }
    }
    
    private func handleButtonTap() {
        isLoading.toggle()
        mainView.updateButton(isLoading: isLoading)
        if isLoading {
            mainView.startLoadingAnimation()
        } else {
            mainView.stopLoadingAnimation()
        }
    }
}

