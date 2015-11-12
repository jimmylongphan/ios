//
//  SecondViewController.swift
//  To Do List
//
//  Created by Jimmy Phan on 11/10/15.
//  Copyright © 2015 udemy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var item: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        // add the text to the global variable
        toDoList.append(item.text!)
        
        // clear the text field
        item.text = ""
        
        // set the key toDoList with the updated toDoList object
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        // allow user to tap outside keyboard to close
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        // item no longer controls text so keyboard is gone
        item.resignFirstResponder()
        return true
    }
}

