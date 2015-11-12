//
//  ViewController.swift
//  Cat Years
//
//  Created by Jimmy Phan on 10/29/15.
//  Copyright © 2015 udemy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var catAgeTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        
        // Takes value from catAge field
        // ! means unwrap
        // exclamation value means it will not be empty
        // second ! means it can be converted to Int
        // type cast to Int
        var catAge = Int(catAgeTextField.text!)!
        
        catAge = catAge * 7
        
        // use variable insertion for text
        resultLabel.text = "Your cat is \(catAge) in cat years"
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

