//
//  ViewController.swift
//  Tip
//
//  Created by Gabe Sanborn on 8/20/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipContol: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
    }

    @IBAction func onTap(_ sender: Any){
        
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        //Get initial bill amount and calculate tip
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        
        //calculate tip and total
        let tip = bill * tipPercentages[tipContol.selectedSegmentIndex]
        let total = bill + tip
        
        //Update tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

