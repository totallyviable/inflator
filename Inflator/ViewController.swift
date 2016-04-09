//
//  ViewController.swift
//  Inflator
//
//  Created by Jacob Bijani on 4/9/16.
//  Copyright © 2016 Totally Viable. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var OutputAmount: UILabel!
    @IBOutlet weak var InputAmount: UITextField!
    @IBOutlet weak var YearPast: UITextField!
    
    @IBAction func SubmitButton(sender: AnyObject) {
        OutputAmount.text = InputAmount.text
        
        print("touched all up inside it")
        print(InputAmount.text)
        print(YearPast.text)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

