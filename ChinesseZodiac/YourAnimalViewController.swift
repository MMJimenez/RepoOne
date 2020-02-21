//
//  YourAnimalViewController.swift
//  ChinesseZodiac
//
//  Created by user164577 on 2/21/20.
//  Copyright © 2020 user164577. All rights reserved.
//

import UIKit

class YourAnimalViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalDescriptionLabel: UILabel!
    
    //MARK: Internal vars
    var yourAnimal = Horoscope()
    var dateRecivedFromPicker: Date = Date()
   
    //MARK: Livecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    
        guard let yourAnimalSelected =  yourAnimal.findYourHoroscope(selectedDate: dateRecivedFromPicker) else { return }
        
        animalNameLabel.text = yourAnimalSelected.name
        animalDescriptionLabel.text = yourAnimalSelected.descriptionText
        animalImage.image = UIImage(named: yourAnimalSelected.imageName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sendAnimal = segue.destination as? CompatiblesAnimalsViewController else { return }
        sendAnimal.receivedAnimal = yourAnimal.findYourHoroscope(selectedDate: dateRecivedFromPicker)!
    }
}
