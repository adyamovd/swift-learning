//
//  CustomLoadingView.swift
//  5.12.1_Adyamov
//
//  Created by Диас Адямов on 06.04.2025.
//

import UIKit

final class CustomLoadingView: UIView {
    private let shapeLayer = CAShapeLayer()
    private var isAnimating = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayer()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLayer()
    }
    
    private func setupLayer() {
        let center = CGPoint(x: bounds.midX, y: bounds.midY)
        let radius = min(bounds.width, bounds.height) / 2 - 10
        let circularPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: 0, endAngle: .pi * 1.5, clockwise: true)

        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = UIColor.systemBlue.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 8
        shapeLayer.lineCap = .round
        shapeLayer.strokeEnd = 0.5
        
        layer.addSublayer(shapeLayer)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        shapeLayer.frame = bounds
        setupLayer()
    }
    
    func startAnimating() {
        guard !isAnimating else { return }
        isAnimating = true
        self.isHidden = false
        
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotationAnimation.toValue = NSNumber(value: Double.pi * 2)
        rotationAnimation.duration = 2
        rotationAnimation.repeatCount = .infinity
        shapeLayer.add(rotationAnimation, forKey: "rotationAnimation")
        
        let strokeAnimation = CABasicAnimation(keyPath: "strokeEnd")
        strokeAnimation.toValue = 0.8
        strokeAnimation.duration = 1
        strokeAnimation.autoreverses = true
        strokeAnimation.repeatCount = .infinity
        shapeLayer.add(strokeAnimation, forKey: "strokeAnimation")
    }
    
    func stopAnimating() {
        guard isAnimating else { return }
        isAnimating = false
        shapeLayer.removeAllAnimations()
        self.isHidden = true
    }
}
