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
    
//  Functions of action on clicked the buttons
    @IBAction func leftUpClicked(sender: AnyObject) {
        checkArea(left_up)
    }
    @IBAction func centerUpClicked(sender: AnyObject) {
        checkArea(center_up)
    }
    @IBAction func rightUpClicked(sender: AnyObject) {
        checkArea(right_up)
    }
    @IBAction func leftMiddleClicked(sender: AnyObject) {
        checkArea(left_middle)
    }
    @IBAction func centerMiddleClicked(sender: AnyObject) {
        checkArea(center_middle)
    }
    @IBAction func rightMiddleClicked(sender: AnyObject) {
        checkArea(right_middle)
    }
    @IBAction func leftDownClicked(sender: AnyObject) {
        checkArea(left_down)
    }
    @IBAction func centerDownClicked(sender: AnyObject) {
        checkArea(center_down)
    }
    @IBAction func rightDownClicked(sender: AnyObject) {
        checkArea(right_down)
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
        if ClickedButton.currentTitle == nil {
            showSymbolOfMove(ClickedButton)
        } else {
            print("This area is already taken")
        }
    }
    
    func checkWinner() {
        if left_up.currentTitle == "X" && center_up.currentTitle == "X" && right_up.currentTitle == "X" {
            
        } else if left_up.currentTitle == "O" && center_up.currentTitle == "O" && right_up.currentTitle == "O" {
            
        }
        
        if left_middle.currentTitle == "X" && center_middle.currentTitle == "X" && right_middle.currentTitle == "X" {
            
        } else if left_middle.currentTitle == "O" && center_middle.currentTitle == "O" && right_middle.currentTitle == "O" {
            
        }
        
        if left_down.currentTitle == "X" && center_down.currentTitle == "X" && right_down.currentTitle == "X" {
            
        } else if left_down.currentTitle == "O" && center_down.currentTitle == "O" && right_down.currentTitle == "O" {
            
        }
        
        if left_down.currentTitle == "X" && left_middle.currentTitle == "X" && left_up.currentTitle == "X" {
            
        } else if left_down.currentTitle == "O" && left_middle.currentTitle == "O" && left_up.currentTitle == "O" {
            
        }
        
        if center_down.currentTitle == "X" && center_middle.currentTitle == "X" && center_up.currentTitle == "X" {
            
        } else if center_down.currentTitle == "O" && center_middle.currentTitle == "O" && center_up.currentTitle == "O" {
            
        }
        
        if right_up.currentTitle == "X" && right_down.currentTitle == "X" && right_middle.currentTitle == "X" {
            
        } else if right_up.currentTitle == "O" && right_down.currentTitle == "O" && right_middle.currentTitle == "O" {
            
        }
        
        if left_up.currentTitle == "X" && center_middle.currentTitle == "X" && right_down.currentTitle == "X" {
            
        } else if left_up.currentTitle == "O" && center_middle.currentTitle == "O" && right_down.currentTitle == "O" {
            
        }
        
        if left_down.currentTitle == "X" && center_middle.currentTitle == "X" && right_up.currentTitle == "X" {
            
        } else if left_down.currentTitle == "O" && center_middle.currentTitle == "O" && right_up.currentTitle == "O" {
            
        }
    }
    
}



















