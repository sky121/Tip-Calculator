//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Sky H on 12/9/20.
//  Copyright © 2020 Sky H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //test
        
    }
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
        
    }
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmount.text!) ?? 0
        let tipPercentage = [0.1,0.18,0.2]
        let tip = bill*tipPercentage[tipSelector.selectedSegmentIndex]
        let total = tip+bill
        tipLabel.text = String(format: "$%0.2f", tip)
        totalLabel.text = String(format: "$%0.2f", total)
    }
    

}

