//
//  ViewController.swift
//  How Many
//
//  Created by JASON STIESI on 8/23/17.
//  Copyright © 2017 JASON STIESI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fingersTextField: UITextField!
    
    @IBAction func guess(_ sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if fingersTextField.text == diceRoll {
            
            resultLabel.text = "You are right"
            
        } else {
            
            resultLabel.text = "Wrong! it was a " + diceRoll + " "
            
        }
        
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

