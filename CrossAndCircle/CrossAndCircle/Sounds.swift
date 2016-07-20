//
//  Sounds.swift
//  CrossAndCircle
//
//  Created by Kacper Wojnowski on 20/07/16.
//  Copyright © 2016 Kacper Wojnowski. All rights reserved.
//

import Foundation
import AVFoundation

class Sounds {
    
    var buttonDeep: AVAudioPlayer?
    var errorClick: AVAudioPlayer?
    var winnerSong: AVAudioPlayer?
    
    func setupAudioPlayerWithFile(File: NSString, Type: NSString) -> AVAudioPlayer? {
        let path = NSBundle.mainBundle().pathForResource(File as String, ofType: Type as String)
        let url = NSURL.fileURLWithPath(path!)
        
        var audioPlayer: AVAudioPlayer?
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOfURL: url)
        } catch {
            print("Player not available")
        }
        
        return audioPlayer
    }
    
    func playButtonDeep(Mute: Bool) {
        if let buttonDeep = setupAudioPlayerWithFile("click", Type: "mp3") {
            self.buttonDeep = buttonDeep
        }
        
        if Mute {
            buttonDeep?.volume = Float(0.1)
        } else {
            buttonDeep?.volume = Float(0.0)
        }
        
        buttonDeep?.play()
    }
    
    func playErrorClick(Mute: Bool) {
        if let errorClick = setupAudioPlayerWithFile("error", Type: "wav") {
            self.errorClick = errorClick
        }
        
        if Mute {
            errorClick?.volume = Float(0.1)
        } else {
            errorClick?.volume = Float(0.0)
        }
        errorClick?.play()
    }
    
    func playWinnerSong(Mute: Bool) {
        if let winnerSong = setupAudioPlayerWithFile("winner", Type: "wav") {
            self.winnerSong = winnerSong
        }
        
        if Mute {
            winnerSong?.volume = Float(0.3)
        } else {
            winnerSong?.volume = Float(0.0)
        }
        winnerSong?.play()
    }
    
}