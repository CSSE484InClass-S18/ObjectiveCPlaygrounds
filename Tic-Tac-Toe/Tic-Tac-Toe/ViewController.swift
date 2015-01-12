//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by David Fisher on 12/22/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var gameStateNavBar: UINavigationBar!
    @IBOutlet weak var gameStateLabel: UILabel!
    @IBOutlet var gameBoardButtons: [UIButton]!
    @IBOutlet weak var gameBoardImageView: UIImageView!

    var game = TicTacToeGame()
    let xImage = UIDevice.currentDevice().userInterfaceIdiom == .Phone ?
        UIImage(named: "iPhone_X.png") : UIImage(named: "iPad_X.png")
    let oImage = UIDevice.currentDevice().userInterfaceIdiom == .Phone ?
        UIImage(named: "iPhone_O.png") : UIImage(named: "iPad_O.png")

    @IBAction func pressedNewGame(sender: AnyObject) {
        game = TicTacToeGame()
        updateView()
        println(game)
    }

    @IBAction func pressedGameButton(sender: AnyObject) {
        let button = sender as UIButton
        game.pressedSquare(button.tag)
        updateView()
        println(game)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        gameStateNavBar.titleTextAttributes = [NSFontAttributeName: UIFont.boldSystemFontOfSize(34)]

//        gameBoardImageView.image = UIDevice.currentDevice().userInterfaceIdiom == UIUserInterfaceIdiom.Phone ? UIImage(named: "iPhone_board.png") : UIImage(named: "iPad_board.png")
        
        gameBoardImageView.image = self.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClass.Compact ? UIImage(named: "iPhone_board.png") : UIImage(named: "iPad_board.png")

        updateView()
        println(game)
    }

    func updateView() {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            gameStateLabel.text = game.gameState.rawValue
        } else {
            gameStateNavBar.topItem?.title = game.gameState.rawValue
        }
        for button in gameBoardButtons {
            switch game.gameBoard[button.tag] {
            case .None:
                button.setImage(nil, forState: .Normal)
            case .O:
                button.setImage(oImage, forState: .Normal)
            case .X:
                button.setImage(xImage, forState: .Normal)
            }
        }
    }
}







