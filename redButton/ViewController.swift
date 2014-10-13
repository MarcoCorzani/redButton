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

    
    
    
    
   
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

      dontPressTheRedButtonLabel.text = shouts[0]
        
      
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
        
      
        @IBAction func redButtonPressed(sender: UIButton) {
            
        
            
        var anzahlShouts = shouts.count
        
        
        
        
            if currentIndex < anzahlShouts {
            
                currentIndex += 1
                
                let shoutOut = shouts[currentIndex]
                
                dontPressTheRedButtonLabel.text = ("\(shoutOut)")
            
                println("\(shoutOut)"); println(currentIndex)
        
            if currentIndex >= anzahlShouts - 1   {
            
                // Entfernt den UIButton "redButtonPressed" mit dem Parameter "sender"
                
               // [sender.removeFromSuperview()]
                
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
    

    @IBAction func reloadButton(sender: UIButton) {
        
        
        
       
        
        currentIndex = 0
      
        ImageViewBang.hidden = true
       
        var anzahlShouts = shouts.count
        
        let shoutOut = shouts[currentIndex]
       
        dontPressTheRedButtonLabel.text = ("\(shoutOut)")
    }
                
                
}

