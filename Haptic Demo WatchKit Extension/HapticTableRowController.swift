//
//  HapticTableRowController.swift
//  Haptic Demo
//
//  Copyright © 2015 Sneaky Crab. All rights reserved.
//

import Foundation
import WatchKit

class HapticTableRowController : NSObject {
    @IBOutlet var interfaceButton: WKInterfaceButton!
    
    var hapticType = WKHapticType.Click
    
    @IBAction func buttonPressed() {
        WKInterfaceDevice.currentDevice().playHaptic(hapticType)
    }
}