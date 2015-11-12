//
//  ViewController.swift
//  Table Views
//
//  Created by Jimmy Phan on 11/3/15.
//  Copyright © 2015 udemy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    
    var cellContent = ["Rob", "Kirsten", "Tommy", "Ralphie"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // creates 3 rows in the table
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
    }
    
    // this code is run for every row in the table
    // so it will run 3 times
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = cellContent[indexPath.row]
        
        return cell
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

