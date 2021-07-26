//
//  SFXMusicSingleton.swift
//  BU
//
//  Created by Daniella Onishi on 25/07/21.
//

import Foundation
import AVFoundation

class SFXMusicSingleton {
    static let shared = SFXMusicSingleton()
    fileprivate var currentPlayer: AVAudioPlayer?
    var currentMusic: Music?
    
    fileprivate func playMusic(named name: String, with fileExtension: String) {
        
        currentPlayer?.stop()
        
        let url: URL = Bundle.main.url(forResource: name, withExtension: fileExtension)!
        let player = try! AVAudioPlayer(contentsOf: url, fileTypeHint: nil)
        
        player.numberOfLoops = 1
        player.prepareToPlay()
        player.volume = 0.3
        player.play()
        
        self.currentPlayer = player
    }
    
    func playMainMusic() {
        playMusic(named: "Alien Imposter By HeatleyBros", with: ".mp3")
        currentMusic = .principal
    }
    
    func playDefaultMusic() {
        playMusic(named: "HeatleyBros - Warp Portal", with: "mp3")
        currentMusic = .normal
    }
    
    func playScareMusic() {
        playMusic(named: "HeatleyBros - 8 Bit Nightmare", with: "mp3")
        currentMusic = .scare
    }
}


enum Music {
    case normal
    case scare
    case principal
}
