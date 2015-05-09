//
//  SecondViewController.swift
//  Campfire
//
//  Created by Lauren Roth on 5/6/15.
//  Copyright (c) 2015 Lauren Roth. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    
    let moodArray = ["Happy" , "Sad", "Maudlin", "Ecstatic", "Overjoyed", "Optimistic", "Bewildered", "Cynical", "Giddy", "Indifferent", "Relaxed"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        //tell data source how many components to show in the picker view (we want 1)
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //determine how many rows to populate in the picker view, we want a row for each mood
        return moodArray.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return moodArray[row]
    }
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func displayDay(sender: AnyObject) {
        //grab the selected date from the date picker
        var chosenDate = self.datePicker.date
        
        //create an NSDateFormatter
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        
        
        //grab the day and create a message
        let day = formatter.stringFromDate(chosenDate)
        let result = "That was a \(day)"
        
        //create an alert
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        //show the alert
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        //add an "OK" button
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
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

