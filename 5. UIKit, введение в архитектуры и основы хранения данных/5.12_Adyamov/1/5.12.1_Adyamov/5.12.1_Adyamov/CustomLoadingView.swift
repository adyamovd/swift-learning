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
        let circularPath = UIBezierPath(arcCenter: center, radius: radius, startAngle: 0, endAngle: .pi * 2, clockwise: true)
        
        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = UIColor.systemBlue.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 8
        shapeLayer.lineCap = .round

        shapeLayer.transform = CATransform3DMakeRotation(-.pi / 2, 0, 0, 1)
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

        let strokeEndAnimation = CAKeyframeAnimation(keyPath: "strokeEnd")
        strokeEndAnimation.values = [0.0, 0.25, 0.5, 0.75, 1.0, 1.0, 1.0]

        let strokeStartAnimation = CAKeyframeAnimation(keyPath: "strokeStart")
        strokeStartAnimation.values = [0.0, 0.0, 0.0, 0.25, 0.5, 0.75, 1.0]

        let duration: Double = 3.0
        strokeEndAnimation.duration = duration
        strokeStartAnimation.duration = duration
        strokeEndAnimation.repeatCount = .infinity
        strokeStartAnimation.repeatCount = .infinity
        strokeEndAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        strokeStartAnimation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)

        shapeLayer.add(strokeEndAnimation, forKey: "strokeEndAnimation")
        shapeLayer.add(strokeStartAnimation, forKey: "strokeStartAnimation")
    }

    func stopAnimating() {
        guard isAnimating else { return }
        isAnimating = false
        shapeLayer.removeAllAnimations()
        self.isHidden = true
    }
}
