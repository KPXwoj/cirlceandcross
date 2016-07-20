//
//  SettingsController.swift
//  CrossAndCircle
//
//  Created by Kacper Wojnowski on 19/07/16.
//  Copyright © 2016 Kacper Wojnowski. All rights reserved.
//

import UIKit

class SettingsController: UITableViewController {
    
    // Control State
    @IBOutlet weak var music_control: UISwitch!
    @IBOutlet weak var darkMode_control: UISwitch!
    
    var settingsRef = Settings()
    var currentSettings: [String: Bool] = [:]
    
    
//  Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentSettings = ["darkMode": settingsRef.darkMode,"music": settingsRef.music]
        
        // Set setting values
        darkMode_control.setOn(currentSettings["darkMode"]!, animated: true)
        music_control.setOn(currentSettings["music"]!, animated: true)

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "saveSettingsSegue" {
            if segue.destinationViewController is GameController {
                settingsRef.saveSettigns(darkMode_control.on, music: music_control.on)
                print("save clicked")
            } else {
                print("Error. Invalid controller")
            }
        }
        
        if segue.identifier == "cancelSettingsSegue" {
            if segue.destinationViewController is GameController {
                settingsRef.saveSettigns(currentSettings["darkMode"]!, music: currentSettings["music"]!)
                print("cancel clicked")
            } else {
                print("Error. Invalid controller")
            }
        }
    }
    
}