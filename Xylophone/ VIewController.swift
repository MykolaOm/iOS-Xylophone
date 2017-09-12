//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    let musicArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var selectedSoundFileName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        var selectedSoundFileName : String = musicArray[sender.tag-1]
        //noteNumber = String(sender.tag)
        playSound()
        
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: selectedSoundFileName, withExtension:"wav")!
    
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            self.player = sound
            //sound.prepareToPlay()
            sound.play()
        } catch {
            print(error)
        // couldn't load file :(
        }
    }
  

}

