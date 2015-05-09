//
//  FirstViewController.swift
//  Campfire
//
//  Created by Lauren Roth on 5/6/15.
//  Copyright (c) 2015 Lauren Roth. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    
    @IBAction func doSomething(sender: AnyObject) {
        println("it works!")
    }
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func refreshTime(sender: AnyObject) {
        let now = NSDate()
        
        //create dateformatter, set to hours:minutes am/pm
        var formatter = NSDateFormatter()
        formatter.dateFormat = "HH:mm a"
        
        timeLabel.text = formatter.stringFromDate(now)
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

