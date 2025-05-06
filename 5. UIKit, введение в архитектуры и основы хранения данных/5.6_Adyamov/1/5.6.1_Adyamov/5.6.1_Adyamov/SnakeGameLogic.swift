//
//  SnakeGameLogic.swift
//  5.6.1_Adyamov
//
//  Created by Диас Адямов  on 01.05.2025.
//

import UIKit

class SnakeGameLogic {
    var snake: [(x: Int, y: Int)] = [(0, 0), (1, 0)]
    var direction: Direction = .left
    var target: (x: Int, y: Int)?
    var score: Int = 0
    
    private var cubeSize: CGFloat = 0
    private var fieldWidth: Int = 16
    private var fieldHeight: Int = 0
    private var moveInterval: Double = 1.0
    private var snakeViews: [UIView] = []
    private var targetView: UIView?
    private weak var gameFieldView: UIView?
    
    init(gameFieldView: UIView) {
        self.gameFieldView = gameFieldView
    }
    
    func calculateSizes(viewBoundsWidth: CGFloat, gameFieldHeight: CGFloat) {
        cubeSize = viewBoundsWidth / CGFloat(fieldWidth)
        fieldHeight = Int(gameFieldHeight / cubeSize)
        gameFieldView?.frame.size = CGSize(
            width: viewBoundsWidth,
            height: CGFloat(fieldHeight) * cubeSize
        )
    }
    
    func setupGameField() {
        snake = [(x: fieldWidth / 2, y: fieldHeight / 2), (x: fieldWidth / 2 + 1, y: fieldHeight / 2)]
    }
    
    func spawnTarget() {
        var newTarget: (x: Int, y: Int)
        repeat {
            newTarget = (x: Int.random(in: 0..<fieldWidth), y: Int.random(in: 0..<fieldHeight))
        } while snake.contains(where: { $0.x == newTarget.x && $0.y == newTarget.y })
        
        target = newTarget
        
        if targetView == nil {
            targetView = UIView(frame: CGRect(
                x: CGFloat(newTarget.x) * cubeSize,
                y: CGFloat(newTarget.y) * cubeSize,
                width: cubeSize,
                height: cubeSize
            ))
            if let targetImage = UIImage(named: "apple") {
                let imageView = UIImageView(image: targetImage)
                imageView.frame = targetView!.bounds
                imageView.contentMode = .scaleAspectFit
                targetView?.addSubview(imageView)
            } else {
                targetView?.backgroundColor = .red
            }
            gameFieldView?.addSubview(targetView!)
        } else {
            targetView?.frame = CGRect(
                x: CGFloat(newTarget.x) * cubeSize,
                y: CGFloat(newTarget.y) * cubeSize,
                width: cubeSize,
                height: cubeSize
            )
        }
    }
    
    func updateSnakeViews() {
        snakeViews.forEach { $0.removeFromSuperview() }
        snakeViews.removeAll()
        
        for segment in snake {
            let segmentView = UIView(frame: CGRect(
                x: CGFloat(segment.x) * cubeSize,
                y: CGFloat(segment.y) * cubeSize,
                width: cubeSize,
                height: cubeSize
            ))
            if let snakeImage = UIImage(named: "snake_segment") {
                let imageView = UIImageView(image: snakeImage)
                imageView.frame = segmentView.bounds
                imageView.contentMode = .scaleAspectFit
                segmentView.addSubview(imageView)
            } else {
                segmentView.backgroundColor = .green
            }
            gameFieldView?.addSubview(segmentView)
            snakeViews.append(segmentView)
        }
    }
    
    func moveSnake(onScoreUpdate: (Int) -> Void) -> Bool {
        guard let target = target else { return false }
        
        var newHead = snake.first!
        switch direction {
        case .up:
            newHead.y = (newHead.y - 1 + fieldHeight) % fieldHeight
        case .down:
            newHead.y = (newHead.y + 1) % fieldHeight
        case .left:
            newHead.x = (newHead.x - 1 + fieldWidth) % fieldWidth
        case .right:
            newHead.x = (newHead.x + 1) % fieldWidth
        }
        
        if snake.dropFirst().contains(where: { $0.x == newHead.x && $0.y == newHead.y }) {
            return true
        }
        
        snake.insert(newHead, at: 0)
        
        if newHead.x == target.x && newHead.y == target.y {
            score += 1
            onScoreUpdate(score)
            spawnTarget()
            moveInterval = max(0.2, 1.0 - Double(snake.count - 2) * 0.05)
        } else {
            snake.removeLast()
        }
        
        updateSnakeViews()
        return false
    }

    func resetGame() {
        snake = [(x: fieldWidth / 2, y: fieldHeight / 2), (x: fieldWidth / 2 + 1, y: fieldHeight / 2)]
        direction = .left
        score = 0
        moveInterval = 1.0
        spawnTarget()
        updateSnakeViews()
    }
    
    func getMoveInterval() -> Double {
        return moveInterval
    }
}
