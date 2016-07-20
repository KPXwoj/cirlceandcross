//
//  Settings.swift
//  CrossAndCircle
//
//  Created by Kacper Wojnowski on 19/07/16.
//  Copyright © 2016 Kacper Wojnowski. All rights reserved.
//

import Foundation

class Settings {
    
    var darkMode: Bool = false
    var music: Bool = true
    
    func getSettings() -> [String: Bool] {
        let settings = ["darkMode": self.darkMode, "music": self.music]
        return settings
    }
    
    func saveSettigns(darkMode: Bool, music: Bool) {

    }
    
}