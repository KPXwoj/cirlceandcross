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
    
    
//  The variables with the button of game
    @IBOutlet weak var left_up: UIButton!
    @IBOutlet weak var center_up: UIButton!
    @IBOutlet weak var right_up: UIButton!
    @IBOutlet weak var left_middle: UIButton!
    @IBOutlet weak var center_middle: UIButton!
    @IBOutlet weak var right_middle: UIButton!
    @IBOutlet weak var left_down: UIButton!
    @IBOutlet weak var center_down: UIButton!
    @IBOutlet weak var right_down: UIButton!
    

    
    
    
    
}