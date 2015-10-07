//
//  pickDice.swift
//  watchDiceRoller
//
//  Created by Alexander Hinkle on 10/6/15.
//  Copyright © 2015 Alexander Hinkle. All rights reserved.
//

import WatchKit
import Foundation


class pickDice: WKInterfaceController
{

    @IBOutlet var theTable: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        let labelNames = ["d4","d6","d8","d10","d12","d20","d100"]
        self.theTable.setNumberOfRows(labelNames.count, withRowType: "cell")
        for(var i = 0; i < labelNames.count; i++)
        {
            let currRow = self.theTable.rowControllerAtIndex(i) as! diceRow
            currRow.theObject.setText(labelNames[i])
            currRow.theImage.setImageNamed(labelNames[i] + ".jpg")
        }
    }
    

    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int)
    {
        self.pushControllerWithName("howMany", context: "whatever")
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
