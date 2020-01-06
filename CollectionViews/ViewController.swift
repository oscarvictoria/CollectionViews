//
//  ViewController.swift
//  CollectionViews
//
//  Created by Oscar Victoria Gonzalez  on 1/2/20.
//  Copyright © 2020 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var datePicker: UIDatePicker!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   

    @IBAction func submit(_ sender: UIButton) {
        let myDate = datePicker.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = myDate
        dateFormatter.dateFormat = "YYYY-MM-DD"
        let dateString = dateFormatter.string(from:date)
        print(dateString)
    }
    
}

