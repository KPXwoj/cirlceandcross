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
    
    
//  Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let isMusicValue = PlistManager.sharedInstance.getValueForKey("isMusic")!
        let isDarkModeValue = PlistManager.sharedInstance.getValueForKey("isDarkMode")!
        if isMusicValue as! NSObject == false {
            print("Music value is false")
            music_control.setOn(false, animated: true)
        } else {
            print("Music value is true")
            music_control.setOn(true, animated: true)
        }
        if isDarkModeValue as! NSObject == false {
            print("Dark Mode value is false")
            darkMode_control.setOn(false, animated: true)
        } else {
            print("Dark Mode value is false")
            darkMode_control.setOn(true, animated: true)
        }
        

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "saveSettingsSegue" {
            if segue.destinationViewController is GameController {
                print("save clicked")
                PlistManager.sharedInstance.saveValue(music_control.on, forKey: "isMusic")
                PlistManager.sharedInstance.saveValue(darkMode_control.on, forKey: "isDarkMode")
            } else {
                print("Error. Invalid controller")
            }
        }
        
        if segue.identifier == "cancelSettingsSegue" {
            if segue.destinationViewController is GameController {
                
                print("cancel clicked")
            } else {
                print("Error. Invalid controller")
            }
        }
    }
    
}