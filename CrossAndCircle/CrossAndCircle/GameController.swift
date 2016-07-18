//
//  GameController.swift
//  CrossAndCircle
//
//  Created by Kacper Wojnowski on 18/07/16.
//  Copyright © 2016 Kacper Wojnowski. All rights reserved.
//

import UIKit

class GameController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetButtonsTitle()
    }
    
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
            button.backgroundColor = UIColor.greenColor()
        }
        disabledButtons()
    }
    
//  Rules of game
    func checkWinner() {
        if left_up.currentTitle == "X" && center_up.currentTitle == "X" && right_up.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_up, center_up, right_up)
        } else if left_up.currentTitle == "O" && center_up.currentTitle == "O" && right_up.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_up, center_up, right_up)
        }
        
        if left_middle.currentTitle == "X" && center_middle.currentTitle == "X" && right_middle.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_middle, center_middle, right_middle)
        } else if left_middle.currentTitle == "O" && center_middle.currentTitle == "O" && right_middle.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_middle, center_middle, right_middle)
        }
        
        if left_down.currentTitle == "X" && center_down.currentTitle == "X" && right_down.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_down, center_down, right_down)
        } else if left_down.currentTitle == "O" && center_down.currentTitle == "O" && right_down.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_down, center_down, right_down)
        }
        
        if left_down.currentTitle == "X" && left_middle.currentTitle == "X" && left_up.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_down, left_middle, left_up)
        } else if left_down.currentTitle == "O" && left_middle.currentTitle == "O" && left_up.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_down, left_middle, left_up)
        }
        
        if center_down.currentTitle == "X" && center_middle.currentTitle == "X" && center_up.currentTitle == "X" {
            setBackgroundOfWinnerButtons(center_down, center_middle, center_up)
        } else if center_down.currentTitle == "O" && center_middle.currentTitle == "O" && center_up.currentTitle == "O" {
            setBackgroundOfWinnerButtons(center_down, center_middle, center_up)
        }
        
        if right_up.currentTitle == "X" && right_down.currentTitle == "X" && right_middle.currentTitle == "X" {
            setBackgroundOfWinnerButtons(right_up, right_down, right_middle)
        } else if right_up.currentTitle == "O" && right_down.currentTitle == "O" && right_middle.currentTitle == "O" {
            setBackgroundOfWinnerButtons(right_up, right_down, right_middle)
        }
        
        if left_up.currentTitle == "X" && center_middle.currentTitle == "X" && right_down.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_up, center_middle, right_down)
        } else if left_up.currentTitle == "O" && center_middle.currentTitle == "O" && right_down.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_up, center_middle, right_down)
        }
        
        if left_down.currentTitle == "X" && center_middle.currentTitle == "X" && right_up.currentTitle == "X" {
            setBackgroundOfWinnerButtons(left_down, center_middle, right_up)
        } else if left_down.currentTitle == "O" && center_middle.currentTitle == "O" && right_up.currentTitle == "O" {
            setBackgroundOfWinnerButtons(left_down, center_middle, right_up)
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
    
}

