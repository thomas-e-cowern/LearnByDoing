//
//  PlaySounds.swift
//  LearnByDoing
//
//  Created by Thomas Cowern New on 2/3/22.
//

import Foundation
import AVFoundation

// MARK:  AUdio Player

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    print("inside playSound")
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play sound file")
        }
    }
}
