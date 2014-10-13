//
//  ViewController.swift
//  redButton
//
//  Created by Marco F.A. Corzani on 12.10.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    
    var currentIndex = 0
    var audioPlayer: AVAudioPlayer?
    
    
    
    @IBOutlet weak var dontPressTheRedButtonLabel: UILabel!
    
    @IBOutlet weak var ImageViewBang: UIImageView!

    @IBOutlet weak var test: UIButton!
    
    
    
   
    
    
    
   
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        
      
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

        @IBAction func redButtonPressed(sender: UIButton) {
    
        
        var anzahlShouts = shouts.count
        
        let shoutOut = shouts[currentIndex]
        
        
        if currentIndex < anzahlShouts {
            
            currentIndex += 1
        
            dontPressTheRedButtonLabel.text = ("\(shoutOut)")
        
     //    if currentIndex >= anzahlShouts {
            
     //       currentIndex = 0
            
      //     }
        
            if currentIndex >= anzahlShouts   {
            
                // Entfernt den UIButton "redButtonPressed" mit dem Parameter "sender"
                
                [sender.removeFromSuperview()]
                
                ImageViewBang.hidden = false
                
                                
               
                
                // audioPlayer wird oben deffiniert
                
                if let path = NSBundle.mainBundle().pathForResource("Byeball", ofType: "wav") {
                    audioPlayer = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path), fileTypeHint: "wav", error: nil)
                    
                    if let sound = audioPlayer {
                        
                        sound.prepareToPlay()
                        
                        sound.play()
                }
            }

        }
        
        
        
        
    }
        
        
        
        
    }
    

   

}

