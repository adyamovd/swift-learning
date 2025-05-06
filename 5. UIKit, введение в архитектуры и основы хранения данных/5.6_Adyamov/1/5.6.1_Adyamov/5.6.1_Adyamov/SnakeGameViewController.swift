//
//  SnakeGameViewController.swift
//  5.6.1_Adyamov
//
//  Created by Диас Адямов  on 06.04.2025.
//

import UIKit

class SnakeGameViewController: UIViewController {
    
    private var gameLogic: SnakeGameLogic!
    private var isPaused: Bool = true
    private var gameTimer: CADisplayLink?
    private var lastUpdateTime: CFTimeInterval = 0
    private let gameFieldView = UIView()
    
    private let scoreLabel = UILabel()
    private let playPauseButton = UIButton(type: .custom)
    private let upButton = UIButton(type: .custom)
    private let downButton = UIButton(type: .custom)
    private let leftButton = UIButton(type: .custom)
    private let rightButton = UIButton(type: .custom)
   
    override func viewDidLoad() {
        super.viewDidLoad()
        gameLogic = SnakeGameLogic(gameFieldView: gameFieldView)
        setupUI()
        gameLogic.calculateSizes(viewBoundsWidth: view.bounds.width, gameFieldHeight: gameFieldView.frame.height)
        gameLogic.setupGameField()
        gameLogic.spawnTarget()
        gameLogic.updateSnakeViews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupUI()
        gameLogic.calculateSizes(viewBoundsWidth: view.bounds.width, gameFieldHeight: gameFieldView.frame.height)
        gameLogic.setupGameField()
        gameLogic.spawnTarget()
        gameLogic.updateSnakeViews()
    }
    
    private func setupUI() {
        view.backgroundColor = .black
        
        gameFieldView.removeFromSuperview()
        scoreLabel.removeFromSuperview()
        playPauseButton.removeFromSuperview()
        upButton.removeFromSuperview()
        downButton.removeFromSuperview()
        leftButton.removeFromSuperview()
        rightButton.removeFromSuperview()
        
        if let gameFieldBackground = UIImage(named: "background") {
            gameFieldView.backgroundColor = UIColor(patternImage: gameFieldBackground)
        } else {
            gameFieldView.backgroundColor = .lightGray
        }
        view.addSubview(gameFieldView)
        
        scoreLabel.text = "Счет 0"
        scoreLabel.font = .systemFont(ofSize: 26)
        scoreLabel.textColor = .white
        view.addSubview(scoreLabel)
        
        playPauseButton.setImage(UIImage(named: "play_icon"), for: .normal)
        playPauseButton.setImage(UIImage(named: "pause_icon"), for: .selected)
        playPauseButton.imageView?.contentMode = .scaleAspectFit
        playPauseButton.contentHorizontalAlignment = .center
        playPauseButton.contentVerticalAlignment = .center
        playPauseButton.backgroundColor = .gray
        playPauseButton.addTarget(self, action: #selector(togglePause), for: .touchUpInside)
        view.addSubview(playPauseButton)
        
        setupButton(upButton, imageName: "up_arrow", action: #selector(changeDirection(_:)))
        setupButton(downButton, imageName: "down_arrow", action: #selector(changeDirection(_:)))
        setupButton(leftButton, imageName: "left_arrow", action: #selector(changeDirection(_:)))
        setupButton(rightButton, imageName: "right_arrow", action: #selector(changeDirection(_:)))
        
        let buttonWidth: CGFloat = 84
        let buttonHeight: CGFloat = 60
        let playPauseButtonWidth: CGFloat = 177
        let playPauseButtonHeight: CGFloat = 60
        let spacing: CGFloat = 10
        let buttonSpacing: CGFloat = 10
        let bottomPadding: CGFloat = spacing
        
        let safeAreaTop = view.safeAreaInsets.top
        let safeAreaBottom = view.safeAreaInsets.bottom
        
        let controlPanelHeight: CGFloat = buttonHeight * 2 + buttonSpacing + spacing + bottomPadding
        
        let bottomY = view.bounds.height - safeAreaBottom - bottomPadding
        let lowerButtonsY = bottomY - buttonHeight
        let upperButtonsY = lowerButtonsY - buttonSpacing - buttonHeight
        let scoreLabelY = upperButtonsY - spacing - 30
        
        let availableHeight = scoreLabelY - safeAreaTop
        gameFieldView.frame = CGRect(
            x: 0, //
            y: safeAreaTop, //
            width: view.bounds.width,
            height: availableHeight
        )
        
        scoreLabel.frame = CGRect(
            x: spacing,
            y: scoreLabelY,
            width: 100,
            height: 30
        )
        
        let rightButtonX = view.bounds.width - buttonWidth - spacing
        let leftButtonX = rightButtonX - buttonWidth - spacing
        
        leftButton.frame = CGRect(
            x: leftButtonX,
            y: upperButtonsY,
            width: buttonWidth,
            height: buttonHeight
        )
        
        rightButton.frame = CGRect(
            x: rightButtonX,
            y: upperButtonsY,
            width: buttonWidth,
            height: buttonHeight
        )
        
        downButton.frame = CGRect(
            x: leftButtonX,
            y: lowerButtonsY,
            width: buttonWidth,
            height: buttonHeight
        )
        
        upButton.frame = CGRect(
            x: rightButtonX,
            y: lowerButtonsY,
            width: buttonWidth,
            height: buttonHeight
        )
        
        playPauseButton.frame = CGRect(
            x: spacing,
            y: lowerButtonsY,
            width: playPauseButtonWidth,
            height: playPauseButtonHeight
        )
    }
    
    private func setupButton(_ button: UIButton, imageName: String, action: Selector) {
        button.setImage(UIImage(named: imageName), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.backgroundColor = .clear
        button.addTarget(self, action: action, for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func togglePause() {
        isPaused.toggle()
        playPauseButton.isSelected = !isPaused
        if isPaused {
            gameTimer?.invalidate()
            gameTimer = nil
        } else {
            gameTimer = CADisplayLink(target: self, selector: #selector(update))
            gameTimer?.preferredFramesPerSecond = 60
            gameTimer?.add(to: .main, forMode: .common)
        }
    }
    
    @objc private func update(_ displayLink: CADisplayLink) {
        let currentTime = displayLink.timestamp
        if currentTime - lastUpdateTime >= gameLogic.getMoveInterval() {
            let didCollide = gameLogic.moveSnake { [weak self] newScore in
                self?.scoreLabel.text = "Счет \(newScore)"
            }
            if didCollide {
                gameOver()
            }
            lastUpdateTime = currentTime
        }
    }
    
    @objc private func changeDirection(_ sender: UIButton) {
        guard !isPaused else { return }
        
        switch sender {
        case upButton:
            if gameLogic.direction != .down && gameLogic.direction != .up {
                gameLogic.direction = .up
            }
        case downButton:
            if gameLogic.direction != .up && gameLogic.direction != .down {
                gameLogic.direction = .down
            }
        case leftButton:
            if gameLogic.direction != .right && gameLogic.direction != .left {
                gameLogic.direction = .left
            }
        case rightButton:
            if gameLogic.direction != .left && gameLogic.direction != .right {
                gameLogic.direction = .right
            }
        default:
            break
        }
    }
    
    private func gameOver() {
        isPaused = true
        playPauseButton.isSelected = false
        gameTimer?.invalidate()
        gameTimer = nil
        let alert = UIAlertController(title: "Game Over", message: "Счет \(gameLogic.score)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Restart", style: .default, handler: { _ in
            self.gameLogic.resetGame()
            self.scoreLabel.text = "Счет 0"
            self.isPaused = true
            self.playPauseButton.isSelected = false
        }))
        present(alert, animated: true)
    }
}
