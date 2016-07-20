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
    
    
    func saveSettigns(darkMode: Bool, music: Bool) {
        print("Dark Mode: \(self.darkMode)")
        print("Music: \(self.music)")
        
        self.darkMode = darkMode
        self.music = music
        
        print("Dark Mode: \(self.darkMode)")
        print("Music: \(self.music)")
    }
    
}