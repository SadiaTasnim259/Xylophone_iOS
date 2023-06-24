//
//  ViewController.swift
//  Xylophone
//
//  Created by Sadia on 24/6/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
 
    var player:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(soundName:sender.currentTitle!)
    }
    
    func playSound(soundName:String) {
            
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player!.play()
            
        }
}

