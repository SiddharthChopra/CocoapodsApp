//
//  ViewController.swift
//  CocoapodsApp
//
//  Created by SiddharthChopra on 02/08/2017.
//  Copyright (c) 2017 SiddharthChopra. All rights reserved.
//

import UIKit
import CocoapodsApp

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = CocoapodsApp(frame: CGRect(x: 10, y: 20, width: 200, height: 20))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let frame1 = CGRect(x: 10, y: 60, width: 125, height: 30)
        let toggleButton = UIButton(frame: frame1)
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: "toggleBlinking", for: .touchUpInside)
        view.addSubview(toggleButton)
    }
    
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

