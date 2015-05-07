//
//  FirstViewController.swift
//  Campfire
//
//  Created by Lauren Roth on 5/6/15.
//  Copyright (c) 2015 Lauren Roth. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var simpleTextField: UITextField!
    @IBOutlet weak var simpleLabel: UILabel!
    
    @IBAction func changeLabel(sender: AnyObject) {
        simpleLabel.text = "Hello, " + simpleTextField.text + "!"
        self.simpleTextField.resignFirstResponder()
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

