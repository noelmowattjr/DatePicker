//
//  ViewController.swift
//  Date Picker
//
//  Created by Noel Mowatt Jr. on 10/10/16.
//  Copyright © 2016 NoelMowattJr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //--My Outlets
    @IBOutlet weak var picker: UIDatePicker!
    @IBOutlet weak var EtiqutteMeansLABELInFrench: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //--Call as soon as view loads up
        pickerDidChange(picker)
    }
    
    @IBAction func pickerDidChange(_ sender: AnyObject) {
        
        //--Capture date
        let date: Date = picker.date
        
        //--Formatter
        let formatter: DateFormatter = DateFormatter()
        
        //--Here we set the format of the date formate
        //--four E's = a day of the week
        formatter.dateFormat = "EEEE"
        
        //--Store day of week
        let dayOfWeek: String = formatter.string(from: date)
        
        //--store dayOfWeek in label
        EtiqutteMeansLABELInFrench.text = "The day is a \(dayOfWeek)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

