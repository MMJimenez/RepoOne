//
//  CompatiblesAnimalsViewController.swift
//  ChinesseZodiac
//
//  Created by user164577 on 2/21/20.
//  Copyright © 2020 user164577. All rights reserved.
//

import UIKit

class CompatiblesAnimalsViewController: UIViewController {

    //MARK: Outlets
    
    @IBOutlet weak var firstAnimalImage: UIImageView!
    @IBOutlet weak var firstAnimalName: UILabel!
    @IBOutlet weak var firstAnimalDescription: UILabel!
    @IBOutlet weak var secondAnimalImage: UIImageView!
    @IBOutlet weak var secondAnimalName: UILabel!
    @IBOutlet weak var secondAnimalDescription: UILabel!
    
    
    //MARK: Internal vars
    var receivedAnimal = Horoscope()
    var firstAnimalCompatible = Horoscope()
    var secondAnimalCompatible = Horoscope()
    
    
    //MARK: Livecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        firstAnimalImage.image = UIImage(named: receivedAnimal.getYourCompatibleAnimal(animalIdentifier: receivedAnimal.firstAnimalCompatible).imageName)
        
        firstAnimalName.text = receivedAnimal.getYourCompatibleAnimal(animalIdentifier: receivedAnimal.firstAnimalCompatible).name
        
        firstAnimalDescription.text = receivedAnimal.getYourCompatibleAnimal(animalIdentifier: receivedAnimal.firstAnimalCompatible).descriptionText
        
        secondAnimalImage.image = UIImage(named: receivedAnimal.getYourCompatibleAnimal(animalIdentifier: receivedAnimal.secondAnimalCompatible).imageName)
        
        secondAnimalName.text = receivedAnimal.getYourCompatibleAnimal(animalIdentifier: receivedAnimal.secondAnimalCompatible).name
        
        secondAnimalDescription.text = receivedAnimal.getYourCompatibleAnimal(animalIdentifier: receivedAnimal.secondAnimalCompatible).descriptionText
    }
}
