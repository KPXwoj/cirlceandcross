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
    }
    @IBAction func centerUpClicked(sender: AnyObject) {
    }
    @IBAction func rightUpClicked(sender: AnyObject) {
    }
    @IBAction func leftMiddleClicked(sender: AnyObject) {
    }
    @IBAction func centerMiddleClicked(sender: AnyObject) {
    }
    @IBAction func rightMiddleClicked(sender: AnyObject) {
    }
    @IBAction func leftDownClicked(sender: AnyObject) {
    }
    @IBAction func centerDownClicked(sender: AnyObject) {
    }
    @IBAction func rightDownClicked(sender: AnyObject) {
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