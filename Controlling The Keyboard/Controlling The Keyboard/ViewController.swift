//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by Jimmy Phan on 11/5/15.
//  Copyright © 2015 udemy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var text: UITextField!
    
    @IBOutlet var label: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        label.text = text.text
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // The view controller is the delegate for the text field
        self.text.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /**
     * When the user clicks outside, it will close the keyboard
    */
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    
    /*
        When the return button is pressed, 
        Takes the textField as input
    
        Returns a boolean
    */
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        
        return true
    }
}

