//
//  ObjectMapperDemo.swift
//  Pods
//
//  Created by Kahuna on 2/7/17.
//
//

import Foundation
import UIKit

public class CocoapodsApp : UILabel {
    public func startBlinking() {
        let options : UIViewAnimationOptions = .repeat
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
