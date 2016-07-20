//
//  GameController.swift
//  CrossAndCircle
//
//  Created by Kacper Wojnowski on 18/07/16.
//  Copyright © 2016 Kacper Wojnowski. All rights reserved.
//

import UIKit

class GameController: UIViewController {
    
    
//  Set two types of move, which can do player
    enum MoveType {
        case Circle, Cross
    }
    
    var currentTypeOfMove = MoveType.Circle
    
//  The variables with the buttons of game
    @IBOutlet weak var left_up: UIButton!
    @IBOutlet weak var center_up: UIButton!
    @IBOutlet weak var right_up: UIButton!
    @IBOutlet weak var left_middle: UIButton!
    @IBOutlet weak var center_middle: UIButton!
    @IBOutlet weak var right_middle: UIButton!
    @IBOutlet weak var left_down: UIButton!
    @IBOutlet weak var center_down: UIButton!
    @IBOutlet weak var right_down: UIButton!
    
//  Text which infos who won
    @IBOutlet weak var winner_text: UILabel!
    
//  Functions of action on clicked the buttons
    @IBAction func leftUpClicked(sender: AnyObject) {
        checkArea(left_up)
        checkWinner()
    }
    @IBAction func centerUpClicked(sender: AnyObject) {
        checkArea(center_up)
        checkWinner()
    }
    @IBAction func rightUpClicked(sender: AnyObject) {
        checkArea(right_up)
        checkWinner()
    }
    @IBAction func leftMiddleClicked(sender: AnyObject) {
        checkArea(left_middle)
        checkWinner()
    }
    @IBAction func centerMiddleClicked(sender: AnyObject) {
        checkArea(center_middle)
        checkWinner()
    }
    @IBAction func rightMiddleClicked(sender: AnyObject) {
        checkArea(right_middle)
        checkWinner()
    }
    @IBAction func leftDownClicked(sender: AnyObject) {
        checkArea(left_down)
        checkWinner()
    }
    @IBAction func centerDownClicked(sender: AnyObject) {
        checkArea(center_down)
        checkWinner()
    }
    @IBAction func rightDownClicked(sender: AnyObject) {
        checkArea(right_down)
        checkWinner()
    }
    
//  New Game Button Clicked
    @IBAction func newgameClicked(sender: AnyObject) {
        getStartedNewGame()
    }
    
    
//  The function shows the x or o on the area
    func showSymbolOfMove(ClickedButton: UIButton) {
        switch currentTypeOfMove {
        case .Circle:
            ClickedButton.setTitle("X", forState: .Normal)
            currentTypeOfMove = .Cross
        case .Cross:
            ClickedButton.setTitle("O", forState: .Normal)
            currentTypeOfMove = .Circle
        }
        
    }
    
//  The function checks an area, it is nil
    func checkArea(ClickedButton: UIButton) {
        if ClickedButton.currentTitle == "" {
            showSymbolOfMove(ClickedButton)
        } else {
            print("This area is already taken")
        }
    }
    
    
//  Sets background for winner areas
    func setBackgroundOfWinnerButtons(WonButtons: UIButton ...) {
        for button in WonButtons {
            UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: {
                button.backgroundColor = UIColor.greenColor()
            }, completion: nil)
        }
        disabledButtons()
    }
    
//  Rules of game
    func checkWinner() {
        if left_up.currentTitle == "X" && center_up.currentTitle == "X" && right_up.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_up, center_up, right_up)
            showWhoWon(.Cross)
        } else if left_up.currentTitle == "O" && center_up.currentTitle == "O" && right_up.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_up, center_up, right_up)
            showWhoWon(.Circle)
        }
        
        if left_middle.currentTitle == "X" && center_middle.currentTitle == "X" && right_middle.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_middle, center_middle, right_middle)
            showWhoWon(.Cross)
        } else if left_middle.currentTitle == "O" && center_middle.currentTitle == "O" && right_middle.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_middle, center_middle, right_middle)
            showWhoWon(.Circle)
        }
        
        if left_down.currentTitle == "X" && center_down.currentTitle == "X" && right_down.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_down, center_down, right_down)
            showWhoWon(.Cross)
        } else if left_down.currentTitle == "O" && center_down.currentTitle == "O" && right_down.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_down, center_down, right_down)
            showWhoWon(.Circle)
        }
        
        if left_down.currentTitle == "X" && left_middle.currentTitle == "X" && left_up.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_down, left_middle, left_up)
            showWhoWon(.Cross)
        } else if left_down.currentTitle == "O" && left_middle.currentTitle == "O" && left_up.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_down, left_middle, left_up)
            showWhoWon(.Circle)
        }
        
        if center_down.currentTitle == "X" && center_middle.currentTitle == "X" && center_up.currentTitle == "X" {
            setBackgroundOfWinnerButtons(center_down, center_middle, center_up)
            showWhoWon(.Cross)
        } else if center_down.currentTitle == "O" && center_middle.currentTitle == "O" && center_up.currentTitle == "O" {
            setBackgroundOfWinnerButtons(center_down, center_middle, center_up)
            showWhoWon(.Circle)
        }
        
        if right_up.currentTitle == "X" && right_down.currentTitle == "X" && right_middle.currentTitle == "X" {
            setBackgroundOfWinnerButtons(right_up, right_down, right_middle)
            showWhoWon(.Cross)
        } else if right_up.currentTitle == "O" && right_down.currentTitle == "O" && right_middle.currentTitle == "O" {
            setBackgroundOfWinnerButtons(right_up, right_down, right_middle)
            showWhoWon(.Circle)
        }
        
        if left_up.currentTitle == "X" && center_middle.currentTitle == "X" && right_down.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_up, center_middle, right_down)
            showWhoWon(.Cross)
        } else if left_up.currentTitle == "O" && center_middle.currentTitle == "O" && right_down.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_up, center_middle, right_down)
            showWhoWon(.Circle)
        }
        
        if left_down.currentTitle == "X" && center_middle.currentTitle == "X" && right_up.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_down, center_middle, right_up)
            showWhoWon(.Cross)
        } else if left_down.currentTitle == "O" && center_middle.currentTitle == "O" && right_up.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_down, center_middle, right_up)
            showWhoWon(.Circle)
        }
    }
    
//  Disabled buttons
    func disabledButtons() {
        left_up.userInteractionEnabled = false
        left_middle.userInteractionEnabled = false
        left_down.userInteractionEnabled = false
        center_up.userInteractionEnabled = false
        center_middle.userInteractionEnabled = false
        center_down.userInteractionEnabled = false
        right_up.userInteractionEnabled = false
        right_middle.userInteractionEnabled = false
        right_down.userInteractionEnabled = false
    }
    
//  Enenbled buttons
    func eneblingButtons() {
        left_up.userInteractionEnabled = true
        left_middle.userInteractionEnabled = true
        left_down.userInteractionEnabled = true
        center_up.userInteractionEnabled = true
        center_middle.userInteractionEnabled = true
        center_down.userInteractionEnabled = true
        right_up.userInteractionEnabled = true
        right_middle.userInteractionEnabled = true
        right_down.userInteractionEnabled = true
    }
    
//  Creator of new game
    func getStartedNewGame() {
    
        resetButtonsTitle()
        
        let gameAreas = [left_up, left_middle, left_down, center_up, center_middle, center_down, right_up, right_middle,right_down]
        
        for area in gameAreas {
            area.backgroundColor = UIColor.whiteColor()
        }
        
        currentTypeOfMove = .Circle
        
        eneblingButtons()
        hideWinnerAnimation()
    }
    
    func resetButtonsTitle() {
        left_up.setTitle("", forState: .Normal)
        left_middle.setTitle("", forState: .Normal)
        left_down.setTitle("", forState: .Normal)
        center_up.setTitle("", forState: .Normal)
        center_middle.setTitle("", forState: .Normal)
        center_down.setTitle("", forState: .Normal)
        right_up.setTitle("", forState: .Normal)
        right_middle.setTitle("", forState: .Normal)
        right_down.setTitle("", forState: .Normal)
    }
    
    func showWhoWon(SymbolofWonPlayer: MoveType) {
        if SymbolofWonPlayer == .Circle {
            winner_text.text = "Wins O!"
            showWinnerAnimation()
        } else if SymbolofWonPlayer == .Cross {
            winner_text.text = "Wins X!"
            showWinnerAnimation()
        }
    }
    
    func showWinnerAnimation() {
        UIView.animateWithDuration(0.5, delay: 0, options: .CurveEaseInOut, animations: {
            self.winner_text.alpha = CGFloat(1.0)
        }, completion: nil)
    }
    
    func hideWinnerAnimation() {
        self.winner_text.alpha = CGFloat(0.0)
    }
    
    
//  Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        resetButtonsTitle()
    }
    
}

