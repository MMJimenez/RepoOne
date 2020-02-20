//
//  FindYourHoroscope.swift
//  ChinesseZodiac
//
//  Created by user164577 on 2/20/20.
//  Copyright © 2020 user164577. All rights reserved.
//

import Foundation

struct Horoscope {
    
    
    
    func yourAnimal(animalNumber: Int) -> String {
        var animalName = " "
        switch animalNumber {
        case 0:
            animalName = "ox"
        case 1:
            animalName = "tiger"
        case 2:
            animalName = "hare"
        case 3:
            animalName = "dragon"
        case 4:
            animalName = "snake"
        case 5:
            animalName = "horse"
        case 6:
            animalName = "goat"
        case 7:
            animalName = "monkey"
        case 8:
            animalName = "rooster"
        case 9:
            animalName = "dog"
        case 10:
            animalName = "pig"
        default:
            animalName = "rat"
        }
        return animalName
    }
    
    //var selectedDate = "31/03/1995"
    
    func findYourHoroscope(selectedDate: Date) {
        
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
                
                if selectedDate >= minimumDate && selectedDate <= maximunDate /*|| date == minimumDate || date == maximunDate*/ {
                    print("Your animal is the \(yourAnimal(animalNumber: animalsCount))")
                    break
                }
                
                intervalsCount += 1
            }
            animalsCount += 1
        }
        
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
