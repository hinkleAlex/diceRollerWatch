//
//  HowMany.swift
//  watchDiceRoller
//
//  Created by Alexander Hinkle on 10/6/15.
//  Copyright © 2015 Alexander Hinkle. All rights reserved.
//

import WatchKit
import Foundation


class HowMany: WKInterfaceController
{
    var setNum = ""
   
    @IBOutlet var theTable: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?)
    {
        let labelNames = ["1","2","3","4","5","6","7","8","9","10"]
        self.theTable.setNumberOfRows(labelNames.count, withRowType: "cell2")
        for(var i = 1; i <= labelNames.count; i++)
        {
            let currRow = self.theTable.rowControllerAtIndex(i) as! cell2
            currRow.theAmount.setText("\(i)"+"\(context)")
            
        }
    }
    
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int)
    {
        
    }

    @IBAction func setNumberRoll()
    {
        
               self.popToRootController()
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
