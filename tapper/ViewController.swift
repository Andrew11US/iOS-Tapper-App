//
//  ViewController.swift
//  tapper
//
//  Created by Andrew Foster on 9/5/16.
//  Copyright © 2016 Foster Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
//Outlets
    @IBOutlet weak var logoImg: UIImageView!

    @IBOutlet weak var playButton: UIButton!

    @IBOutlet weak var howManyTapsTxt: UITextField!
    
    @IBOutlet weak var tapButton: UIButton!
    
    @IBOutlet weak var tapsLbl: UILabel!
    
//Actions
    
    @IBAction func onPlayButtonPressed(sender: AnyObject) {
        
       
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImg.hidden = true
            playButton.hidden = true
            howManyTapsTxt.hidden = true
            
            tapButton.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
            
        }
    }
    
    @IBAction func coinButtonPressed(sender: AnyObject) {
        
        currentTaps += 1
        
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        playButton.hidden = false
        howManyTapsTxt.hidden = false
        
        tapButton.hidden = true
        tapsLbl.hidden = true
        
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel() {
        tapsLbl.text = "\(currentTaps) Taps"
    }
    
    
}

