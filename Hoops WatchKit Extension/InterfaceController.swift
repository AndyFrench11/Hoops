//
//  InterfaceController.swift
//  Hoops WatchKit Extension
//
//  Created by Andy French on 22/04/19.
//  Copyright © 2019 Andy French. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    
    @IBOutlet weak var player1NameLabel: WKInterfaceLabel!
    @IBOutlet weak var score1AddButton: WKInterfaceButton!
    @IBOutlet weak var score1MinusButton: WKInterfaceButton!
    @IBOutlet weak var score1Label: WKInterfaceLabel!
    
    @IBOutlet weak var player2NameLabel: WKInterfaceLabel!
    @IBOutlet weak var score2AddButton: WKInterfaceButton!
    @IBOutlet weak var score2MinusButton: WKInterfaceButton!
    @IBOutlet weak var score2Label: WKInterfaceLabel!
    
    var score1Value: Int = 0
    var score2Value: Int = 0
    
    @IBAction func score1AddAction() {
        score1Value += 1
        score1Label.setText(String(score1Value))
    }
    
    @IBAction func score1MinusAction() {
        score1Value -= 1
        score1Label.setText(String(score1Value))
    }
    
    @IBAction func score2AddAction() {
        score2Value += 1
        score2Label.setText(String(score2Value))
    }
    
    @IBAction func score2MinusAction() {
        score2Value -= 1
        score2Label.setText(String(score2Value))
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        //Configure interface objects here.
        score1Label.setText(String(score1Value))
        score1Label.setTextColor(UIColor.green)
        score2Label.setText(String(score2Value))
        score2Label.setTextColor(UIColor.red)
        
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
