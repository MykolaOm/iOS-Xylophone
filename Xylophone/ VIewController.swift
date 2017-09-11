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
    var noteNumber: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        noteNumber = String(sender.tag)
        playSound()
        
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "note"+noteNumber, withExtension:"wav")!
    
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

