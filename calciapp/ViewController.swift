//
//  ViewController.swift
//  calciapp
//
//  Created by admin on 03/03/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    var result = 0
    var input = 0
    var operation = "+"
    
    @IBAction func calculate(sender: AnyObject) {
        switch operation {
        case "+":
            result = result + input
        case "+":
            result = result - input
        case "+":
            result = result * input
        default:
            result = 0
            input = 0
            operation = "+"
        }
        
        self.display.text = String(result)
    }
    
    
    @IBAction func updateInput(sender: AnyObject) {
        input = sender.titleLabel?.text.toInt()
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

