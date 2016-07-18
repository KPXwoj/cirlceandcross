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
        showSymbolOfMove(left_up)
    }
    @IBAction func centerUpClicked(sender: AnyObject) {
        showSymbolOfMove(center_up)
    }
    @IBAction func rightUpClicked(sender: AnyObject) {
        showSymbolOfMove(right_up)
    }
    @IBAction func leftMiddleClicked(sender: AnyObject) {
        showSymbolOfMove(left_middle)
    }
    @IBAction func centerMiddleClicked(sender: AnyObject) {
        showSymbolOfMove(center_middle)
    }
    @IBAction func rightMiddleClicked(sender: AnyObject) {
        showSymbolOfMove(right_middle)
    }
    @IBAction func leftDownClicked(sender: AnyObject) {
        showSymbolOfMove(left_down)
    }
    @IBAction func centerDownClicked(sender: AnyObject) {
        showSymbolOfMove(center_down)
    }
    @IBAction func rightDownClicked(sender: AnyObject) {
        showSymbolOfMove(right_down)
    }
    
//  The function shows the x or o on the area
    func showSymbolOfMove(ClickedButton: UIButton) {
        switch currentTypeOfMove {
        case .Circle:
            ClickedButton.setTitle("X", forState: .Normal)
        case .Cross:
            ClickedButton.setTitle("O", forState: .Normal)
        }
        
    }
    
    
    
}