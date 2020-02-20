//
//  ViewController.swift
//  ChinesseZodiac
//
//  Created by user164577 on 2/20/20.
//  Copyright © 2020 user164577. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    var zodiac = Horoscope()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//MARK: IBActions

    @IBAction func selectDateButton(_ sender: UIButton) {
        let date = datePicker.date
        print(date)
        zodiac.findYourHoroscope(selectedDate: date)
    }
    
    
    
    
}

