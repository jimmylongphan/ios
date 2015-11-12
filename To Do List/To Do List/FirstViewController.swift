//
//  FirstViewController.swift
//  To Do List
//
//  Created by Jimmy Phan on 11/10/15.
//  Copyright © 2015 udemy. All rights reserved.
//

import UIKit

// global and accessible by second view controller
// empty array of strings
var toDoList = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {

    
    
    
    @IBOutlet var toDoListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // check if the user defaults exists
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil {
            // save the todoList as the users defaults map
            toDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! [String]
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        // set the cell data with the item
        cell.textLabel?.text = toDoList[indexPath.row]
        
        return cell
    }
    
    override func viewDidAppear(animated: Bool) {
        // called everytime table changes
        toDoListTable.reloadData()
    }
    
    // this method is called whenever user edits and item in the table
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        // check for swipe to left
        if editingStyle == UITableViewCellEditingStyle.Delete {
            // get the updated row from user
            toDoList.removeAtIndex(indexPath.row)
            
            // update permanent storage
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
            
            // update table
            toDoListTable.reloadData()
        }
        
        
    }

}

