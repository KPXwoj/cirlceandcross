//
//  ViewController.swift
//  CrossAndCircle
//
//  Created by Kacper Wojnowski on 18/07/16.
//  Copyright © 2016 Kacper Wojnowski. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let sounds = Sounds()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.hidesBackButton = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startGameButtonClicked(sender: AnyObject) {
        sounds.playButtonDeep()
    }

}

