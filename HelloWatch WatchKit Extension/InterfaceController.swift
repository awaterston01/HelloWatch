//
//  InterfaceController.swift
//  HelloWatch WatchKit Extension
//
//  Created by Abigail Waterston on 2020-10-14.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var isHello = true;
    
    @IBOutlet weak var displayLabel: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context);
        // Configure interface objects here.
    }
    
    @IBAction func buttonTapped() {
        if (isHello) {
            displayLabel.setText("See you later");
        }
        else {
            displayLabel.setText("Hello World!");
        }
        isHello = !isHello;
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate();
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate();
    }

}
