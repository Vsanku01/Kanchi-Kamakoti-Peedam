//
//  ViewController.swift
//  Kanchi Kamakoti Peedam
//
//  Created by S VISHNU DARSHAN on 13/01/19.
//  Copyright © 2019 S VISHNU DARSHAN. All rights reserved.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        do
        {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sample", ofType: "mp3")!))
            audioPlayer.play()
        }
        catch{
            print(error)
        }
        
    }


}

