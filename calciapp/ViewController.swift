//
//  ViewController.swift
//  calciapp
//
//  Created by admin on 03/03/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputLabel: UILabel!
    @IBOutlet weak var display: UILabel!
    var result = 0
    var operation = "+"
    
    @IBAction func calculate(sender: AnyObject) {
        var input = self.inputLabel.text?.toInt()
        switch operation {
        case "+":
            result = result + input!
        case "-":
            result = result - input!
        case "*":
            result = result * input!
        default:
            result = 0
            input = 0
            operation = "+"
        }
        
        self.display.text = String(result)
    }
    
    
    @IBAction func updateInput(sender: AnyObject) {
        self.inputLabel.text = self.inputLabel.text! + sender.currentTitle!!
    }
    
    @IBAction func updateOperation(sender: AnyObject) {
        operation =
    }
    
    @IBAction func inputClear(sender: AnyObject) {
        self.inputLabel.text = "0"
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

