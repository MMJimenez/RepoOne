//
//  ViewController.swift
//  ChinesseZodiac
//
//  Created by user164577 on 2/20/20.
//  Copyright © 2020 user164577. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    
    //MARK: Internal vars
    
    var zodiac = Horoscope()
    
    //MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        guard let datePicker = segue.destination as? YourAnimalViewController else { return }
        datePicker.dateRecivedFromPicker = datePickerOutlet.date
    }
    //MARK: IBActions
    
    @IBAction func selectDateButton(_ sender: UIButton) {
    }
}

