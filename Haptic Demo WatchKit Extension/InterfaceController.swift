//
//  InterfaceController.swift
//  Haptic Demo WatchKit Extension
//
//  Copyright © 2015 Sneaky Crab. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    @IBOutlet var interfaceTable: WKInterfaceTable!

    let hapticTypeAllValues: [(String, WKHapticType)] = [
        ("Notification",    .Notification),
        ("DirectionUp",     .DirectionUp),
        ("DirectionDown",   .DirectionDown),
        ("Success",         .Success),
        ("Failure",         .Failure),
        ("Retry",           .Retry),
        ("Start",           .Start),
        ("Stop",            .Stop),
        ("Click",           .Click)
    ]
    
    override func willActivate() {
        super.willActivate()
        loadTableData()
    }

    private func loadTableData() {
        interfaceTable.setNumberOfRows(hapticTypeAllValues.count, withRowType: "HapticTableRowController")
        for (index, hapticInfo) in hapticTypeAllValues.enumerate() {
            let (hapticName, hapticType) = hapticInfo
            let row = interfaceTable.rowControllerAtIndex(index) as! HapticTableRowController
            row.interfaceButton.setTitle(hapticName)
            row.hapticType = hapticType
        }
    }
}
