//
//  ViewController.swift
//  Codepath Tip Calculator App
//
//  Created by Red on 7/30/20.
//  Copyright © 2020 Red. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBAction func onTap(_ sender: Any) {
        //Dissmiss the keyboard
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
                //Get initial bill amount and caluclate tips
                let bill = Double(billAmountTextField.text!) ?? 0
                let tipPercentages = [0.15, 0.18, 0.2]
              
        
                //Calculate tip and total
                let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
                let total = bill + tip

                //Update the tip and total labels
                tipPercentageLabel.text = String(format: "$%.2f", tip)
                totalLabel.text = String(format:"$%.2f", total)

    }
}

