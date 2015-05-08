//
//  FirstViewController.swift
//  Campfire
//
//  Created by Lauren Roth on 5/6/15.
//  Copyright (c) 2015 Lauren Roth. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var simpleLabel: UILabel!
    
    @IBAction func refreshTime(sender: AnyObject) {
        let now = NSDate()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
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

