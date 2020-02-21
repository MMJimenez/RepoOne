//
//  FindYourHoroscope.swift
//  ChinesseZodiac
//
//  Created by user164577 on 2/20/20.
//  Copyright © 2020 user164577. All rights reserved.
//

import Foundation

/*enum animalHoroscope {
    case ox, tigur, hare, dragon, snake, horse, goat, monkey, rooster, dog, pig, rat
}*/

struct Horoscope {
   
    var name = " "
    //var animal: animalHoroscope
    var descriptionText = " "
    var imageName = " "
    
    func yourAnimal(animalNumber: Int) -> Horoscope {
        var yourAnimalInstance: Horoscope
        switch animalNumber {
            
        case 0:
            yourAnimalInstance = ox
        case 1:
            yourAnimalInstance = tiger
        case 2:
            yourAnimalInstance = hare
        case 3:
            yourAnimalInstance = dragon
        case 4:
            yourAnimalInstance = snake
        case 5:
            yourAnimalInstance = horse
        case 6:
            yourAnimalInstance = goat
        case 7:
            yourAnimalInstance = monkey
        case 8:
            yourAnimalInstance = rooster
        case 9:
            yourAnimalInstance = dog
        case 10:
            yourAnimalInstance = pig
        default:
            yourAnimalInstance = rat
        }
    
        return yourAnimalInstance
    }
    
    func findYourHoroscope(selectedDate: Date) -> Horoscope? {
        var yourAnimalFinded: Horoscope? = nil
        var animalsCount = 0
        
        for _ in horoscopeIntervals.enumerated() {
            
            var intervalsCount = 0
            
            for _ in horoscopeIntervals[animalsCount].enumerated() {
                
                let dateFormatter = DateFormatter()
                dateFormatter.locale = Locale(identifier: "sp_SP")
                dateFormatter.dateFormat = "dd/MM/yyyy"
                
                //let date = dateFormatter.date(from: selectedDate)!
                let minimum = dateFormatter.date(from: horoscopeIntervals[animalsCount][intervalsCount][0])
                let maximum = dateFormatter.date(from: horoscopeIntervals[animalsCount][intervalsCount][1])
                
                guard let minimumDate = minimum else {
                    print("Error: there is a nil in \(animalsCount) position")
                    break
                }
                
                guard let maximunDate = maximum else {
                    print("Error: there is a nil in \(animalsCount) position")
                    break
                }
                
                if selectedDate >= minimumDate && selectedDate <= maximunDate {
                    yourAnimalFinded = yourAnimal(animalNumber: animalsCount)
                    print(yourAnimal(animalNumber: animalsCount).name)
                    print("And your do \(yourAnimal(animalNumber: animalsCount).descriptionText)")
                    
                    break
                }
                
                intervalsCount += 1
            }
            animalsCount += 1
        }
      return yourAnimalFinded
    }
    
    
    
}

let oxInterval =        [["20/02/1985", "08/02/1986"],["08/02/1997", "27/01/1998"]]
let tigerInterval =     [["09/02/1986", "28/01/1987"],["28/01/1998", "15/02/1999"]]
let hareInterval =      [["29/01/1987", "16/02/1988"],["16/02/1999", "04/02/2000"]]
let dragonInterval =    [["17/02/1988", "05/02/1989"],["05/02/2000", "23/01/2001"]]
let snakeInterval =     [["06/02/1989", "26/01/1990"],["24/01/2001", "11/02/2002"]]
let horseInterval =     [["27/01/1990", "14/02/1991"],["12/02/2002", "31/01/2003"]]
let goatInterval =      [["15/02/1991", "03/02/1992"],["01/02/2003", "21/01/2004"]]
let monkeyInterval =    [["04/02/1992", "22/01/1993"],["22/01/2004", "08/02/2005"]]
let roosterInterval =   [["23/01/1993", "09/02/1994"],["09/02/2005", "28/01/2006"]]
let dogInterval =       [["10/02/1994", "30/01/1995"],["29/01/2006", "17/02/2007"]]
let pigInterval =       [["31/01/1995", "18/02/1996"],["18/02/2007", "06/02/2008"]]
let ratInterval =       [["19/02/1996", "07/02/1997"],["07/02/2008", "25/01/2009"]]

let horoscopeIntervals = [oxInterval, tigerInterval, hareInterval, dragonInterval, snakeInterval, horseInterval, goatInterval, monkeyInterval, roosterInterval, dogInterval, pigInterval, ratInterval]


let ox = Horoscope(name: "Ox", descriptionText:  "ox things", imageName: "oxImage")
let tiger = Horoscope(name: "Tiger", descriptionText: "tiger things", imageName: "tigerImage")
let hare = Horoscope(name: "Hare", descriptionText: hareText, imageName: "hareImage")
let dragon = Horoscope(name: "Dragon", descriptionText: "dragon things", imageName: "dragonImage")
let snake = Horoscope(name: "Snake", descriptionText: "snake things", imageName: "snakeImage")
let horse = Horoscope(name: "horse", descriptionText: "horse things", imageName: "horseImage")
let goat = Horoscope(name: "Goat", descriptionText: "goat things", imageName: "goatImage")
let monkey = Horoscope(name: "Monkey", descriptionText: "monkey things", imageName: "monkeyImage")
let rooster = Horoscope(name: "Rooster", descriptionText: "rooster things", imageName: "roosterImage")
let dog = Horoscope(name: "Dog", descriptionText: "dog things", imageName: "dogImage")
let pig = Horoscope(name: "Pig", descriptionText: "pig things", imageName: "pigImage")
let rat = Horoscope(name: "Rat", descriptionText: "rat things", imageName: "ratImage")

let hareText = "hare things"

