//
//  InterfaceController.swift
//  watchDiceRoller WatchKit Extension
//
//  Created by Alexander Hinkle on 10/6/15.
//  Copyright © 2015 Alexander Hinkle. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var theTable: WKInterfaceTable!
    @IBAction func addButtonClicked()
    {
        self.pushControllerWithName("pickDice", context: "Here you go!")
    }
    
    @IBOutlet var diceString: WKInterfaceLabel!
       override func awakeWithContext(context: AnyObject?)
    {
        self.diceString.setText("2D6")
        super.awakeWithContext(context)
        let labelNames = [""]
        self.theTable.setNumberOfRows(labelNames.count, withRowType: "cell")
        for(var i = 0; i < labelNames.count; i++)
        {
            let currRow = self.theTable.rowControllerAtIndex(i) as! diceRow
            currRow.theObject.setText(labelNames[i])
   
        }

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
