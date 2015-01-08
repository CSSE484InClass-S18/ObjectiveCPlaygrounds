//
//  TicTacToeGame.swift
//  Tic-Tac-Toe
//
//  Created by David Fisher on 12/26/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

class TicTacToeGame : Printable {
    enum MarkType : String {
        case None = "-"
        case X = "X"
        case O = "O"
    }
    enum GameState : String {
        case XTurn = "X's Turn"
        case OTurn = "O's Turn"
        case XWon = "X Wins!"
        case OWon = "O Wins!"
        case Tie = "Tie Game"
    }

    var gameBoard : [MarkType]

    var gameState : GameState

    var description : String {
        return "\(gameState.rawValue)  Board: \(getGameString())"
    }

    init() {
        gameBoard = [MarkType](count: 9, repeatedValue: .None)
        gameState = GameState.XTurn
    }

    func pressedSquare(index : Int) {
        if gameBoard[index] != .None {
            return
        }
        if gameState == .XTurn {
            gameBoard[index] = .X
            gameState = .OTurn
            checkForGameOver()
        } else if gameState == .OTurn {
            gameBoard[index] = .O
            gameState = .XTurn
            checkForGameOver()
        }
    }

    func getGameString(indicies : [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8]) -> String {
        var gameString = ""
        for index in indicies {
            gameString += gameBoard[index].rawValue
        }
        return gameString
    }

    func checkForGameOver() {
        if !contains(gameBoard, .None) {
            gameState = .Tie
        }

        var linesOf3 = [String]()
        linesOf3.append(getGameString(indicies: [0, 1, 2]))
        linesOf3.append(getGameString(indicies: [3, 4, 5]))
        linesOf3.append(getGameString(indicies: [6, 7, 8]))

        linesOf3.append(getGameString(indicies: [0, 3, 6]))
        linesOf3.append(getGameString(indicies: [1, 4, 7]))
        linesOf3.append(getGameString(indicies: [2, 5, 8]))

        linesOf3.append(getGameString(indicies: [0, 4, 8]))
        linesOf3.append(getGameString(indicies: [2, 4, 6]))

        for lineOf3 in linesOf3 {
            if lineOf3 == "XXX" {
                gameState = .XWon
            } else if lineOf3 == "OOO" {
                gameState = .OWon
            }
        }
    }
}