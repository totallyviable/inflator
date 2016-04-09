//
//  ViewController.swift
//  Inflator
//
//  Created by Jacob Bijani on 4/9/16.
//  Copyright © 2016 Totally Viable. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties

    @IBOutlet weak var OutputAmount: UILabel!
    @IBOutlet weak var InputAmount: UITextField!
    @IBOutlet weak var YearPast: UITextField!
    
    @IBAction func SubmitButton(sender: AnyObject) {
        let amount = (InputAmount.text! as NSString).doubleValue
        let year = (YearPast.text! as NSString).integerValue
        
        let inflatedAmount = inflate(amount, year: year)
        
        print(amount, year, inflatedAmount)
        
        OutputAmount.text = String(inflatedAmount)
    }
    
    // MARK: Methods
   
     override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func inflate(amount: Double, year: Int) -> Double {
        return amount * 12;
    }
}

