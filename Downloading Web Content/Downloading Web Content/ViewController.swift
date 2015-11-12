//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Jimmy Phan on 11/12/15.
//  Copyright © 2015 udemy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://www.stackoverflow.com")!
        /*
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            // will happen when task completes
            // this is a closure
            
            if let urlContent = data {
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)

                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    // this is a closure, use self to access outside closure
                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                })
                
            } else {
                // show error message
                
            }
            
            
        }
        task.resume()
        */
        
        webView.loadRequest(NSURLRequest(URL: url))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

