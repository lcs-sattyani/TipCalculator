//
//  ViewController.swift
//  TipCalculator
//
//  Created by Attyani, Sawsan on 2019-10-10.
//  Copyright © 2019 Attyani, Sawsan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var numberOfPeople: UITextField!
    @IBOutlet weak var buttonCalculate: UIButton!
    @IBOutlet weak var tipTotal: UILabel!
    @IBOutlet weak var tipPerPerson: UILabel!
    
    

    //MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let billAmountAsString = billAmount.text!
        let tipPercentAsString = tipPercent.text!
        let numberOfPeopleAsString = numberOfPeople.text!
        
        // Convert strings to Double data type
        let billAmountAsDouble = Double(billAmountAsString)!
        let tipPercentAsDouble = Double(tipPercentAsString)! / 100
        let numberOfPeopleAsDouble = Double(numberOfPeopleAsString)!
        
        // Calculate total tip in dollars
        let totalTip = billAmountAsDouble * tipPercentAsDouble
        
        //Calculate tip per person in dollars
        let tipPerPersonCalculation = totalTip / numberOfPeopleAsDouble
        
        // Send the results to view
        tipTotal.text = String(totalTip)
        tipPerPerson.text = String(tipPerPersonCalculation)
        
        
        

        
       
        
        
    }
    
}

