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
    
    
//  The variables with the area of game
    @IBOutlet weak var LEFT_UP: UIView!
    @IBOutlet weak var MIDDLE_UP: UIView!
    @IBOutlet weak var RIGHT_UP: UIView!
    @IBOutlet weak var LEFT_MIDDLE: UIView!
    @IBOutlet weak var MIDDLE_MIDDLE: UIView!
    @IBOutlet weak var RIGHT_MIDDLE: UIView!
    @IBOutlet weak var LEFT_DOWN: UIView!
    @IBOutlet weak var MIDDLE_DOWN: UIView!
    @IBOutlet weak var RIGHT_DOWN: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
}