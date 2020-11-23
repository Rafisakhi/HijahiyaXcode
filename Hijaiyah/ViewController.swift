//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnSound(_ sender: UIButton) {
    }
    
    func playSound(sound:String) {
        
        let call = Bundle.main.url(forResource: sound, withExtension: "mp3")
        
        player = try! AVAudioPlayer(contentsOf: call!)
        
        player?.play()
    }
    
    

}
