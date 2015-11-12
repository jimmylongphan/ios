//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Jimmy Phan on 11/5/15.
//  Copyright © 2015 udemy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // NSUserDefaults.standardUserDefaults().setObject("Rob", forKey: "name")
        
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! NSString
        print(userName)
        
        let arr = [1,2,3,4]
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        let returnedARray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        //print(returnedARray)
        
        for x in returnedARray {
            print(x)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

