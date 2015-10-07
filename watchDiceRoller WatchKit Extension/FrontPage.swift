//
//  InterfaceController.swift
//  watchDiceRoller WatchKit Extension
//
//  Created by Alexander Hinkle on 10/6/15.
//  Copyright © 2015 Alexander Hinkle. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController
{
    
    let alert = WKAlertAction(title: "Ok", style: WKAlertActionStyle.Cancel, handler: { () -> Void in
    })
    
    
    @IBOutlet var theTable: WKInterfaceTable!
    @IBAction func addButtonClicked()
    {
        self.pushControllerWithName("pickDice", context: "Here you go!")
    }
    
       override func awakeWithContext(context: AnyObject?)
    {
        
        super.awakeWithContext(context)
        let labelNames = [""]
        self.theTable.setNumberOfRows(labelNames.count, withRowType: "cellMain")
        for(var i = 0; i < labelNames.count; i++)
        {
            let currRow = self.theTable.rowControllerAtIndex(i) as! mainTable
            currRow.diceTobeRolled.setText(DiceRollerCore.diceToBeRolled)
   
        }

    }
    @IBAction func rollButtonCLicked()
    {
        for(var i = 0; i <= DiceRollerCore.numDice; i++)
        {
        self.presentAlertControllerWithTitle("The Roll", message: "\(rand()%Int32(DiceRollerCore.numSides))", preferredStyle: WKAlertControllerStyle.Alert, actions: [alert])
        }
    }

    override func willActivate()
    {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
