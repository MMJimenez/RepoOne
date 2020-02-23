//
//  FindYourHoroscope.swift
//  ChinesseZodiac
//
//  Created by user164577 on 2/20/20.
//  Copyright © 2020 user164577. All rights reserved.
//

import Foundation

struct Horoscope {
    
    var name = " "
    var descriptionText = " "
    var imageName = " "
    var firstAnimalCompatible = 0
    var secondAnimalCompatible = 0
    
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
    
    func getYourCompatibleAnimal (animalIdentifier: Int) -> Horoscope {
        let compatibleAnimal = yourAnimal(animalNumber: animalIdentifier)
        return compatibleAnimal
    }
}

enum Strengths: String {
    case honest, contemplative, observant, determined, cautious, loyal, wise, unique, intelligent, crafty, inventive, intense, outspoken, adventurous, unconventional, enthusiastic, intuitive, evenTempered, gentle, faithful, compassionate, clever, courageous, charismatic, passionate, enigmatic, sympathetic, mesmerizing, sensual, beautiful, virile, easygoing, witty, romantic, charming, confident, humorous, exuberant, popular, blunt, capable, talented, brave, selfReliant, animated, likable, sincere, cooperative, protective, helpful, thoughtful, creative, responsible, curious, noble
}
enum Weaknesses: String {
    case stubborn, petty, egotistical, judgmental, acquisitiveness, ruthlessness, nervousness, aggressive, arrogant, anxious, pessimistic, insecure, vain, finicky, impetuous, inflexible, brash, hedonistic, malicious, duplicitous, impatient, impulsive, disorganized, lazy, timid, indecisive, gullible, distrustful, opportunistic, erratic, manipulative, dishonest, controlling, insensitive, selfish, reckless, cynical, paranoid, materialistic
}
//["", ""],["", ""],
let oxInterval =        [["11/02/1937", "30/01/1938"],["29/01/1949", "16/02/1950"],["15/02/1961", "04/02/1962"],["03/02/1973", "22/01/1974"],["20/02/1985", "08/02/1986"],["08/02/1997", "27/01/1998"]]
let tigerInterval =     [["31/01/1938000", ""],["17/02/1950", "05/02/1951"],["05/02/1962", "24/01/1963"],["23/01/1974", "10/02/1975"],["09/02/1986", "28/01/1987"],["28/01/1998", "15/02/1999"]]
let hareInterval =      [["19/02/1939", "07/02/1940"],["06/02/1951", "26/01/1952"],["25/01/1963", "01/02/1964"],["11/02/1975", "30/01/1976"],["29/01/1987", "16/02/1988"],["16/02/1999", "04/02/2000"]]
let dragonInterval =    [["08/02/1940", "26/01/1941"],["27/01/1952", "13/02/1953"],["13/02/1964", "01/02/1965"],["31/01/1976", "17/02/1977"],["17/02/1988", "05/02/1989"],["05/02/2000", "23/01/2001"]]
let snakeInterval =     [["27/01/1941", "14/02/1942"],["14/02/1953", "02/02/1954"],["02/02/1965", "20/01/1966"],["18/02/1977", "06/02/1978"],["06/02/1989", "26/01/1990"],["24/01/2001", "11/02/2002"]]
let horseInterval =     [["15/02/1942", "04/02/1943"],["03/02/1954", "23/01/1955"],["21/01/1966", "08/02/1967"],["07/02/1978", "27/01/1979"],["27/01/1990", "14/02/1991"],["12/02/2002", "31/01/2003"]]
let goatInterval =      [["05/02/1943", "24/01/1944"],["24/01/1955", "11/02/1956"],["09/02/1967", "29/01/1968"],["28/01/1979", "15/02/1980"],["15/02/1991", "03/02/1992"],["01/02/2003", "21/01/2004"]]
let monkeyInterval =    [["25/01/1944", "12/02/1945"],["12/02/1956", "30/01/1957"],["30/01/1968", "16/02/1969"],["16/02/1980", "04/02/1981"],["04/02/1992", "22/01/1993"],["22/01/2004", "08/02/2005"]]
let roosterInterval =   [["13/02/1945", "01/02/1946"],["31/01/1957", "17/02/1958"],["17/02/1969", "05/02/1970"],["05/02/1981", "24/01/1982"],["23/01/1993", "09/02/1994"],["09/02/2005", "28/01/2006"]]
let dogInterval =       [["02/02/1946", "21/01/1947"],["18/02/1958", "07/02/1959"],["06/02/1970", "26/01/1971"],["25/01/1982", "12/02/1983"],["10/02/1994", "30/01/1995"],["29/01/2006", "17/02/2007"]]
let pigInterval =       [["22/01/1947", "09/02/1948"],["08/02/1959", "27/01/1960"],["27/01/1971", "15/01/1972"],["13/02/1983", "01/02/1984"],["31/01/1995", "18/02/1996"],["18/02/2007", "06/02/2008"]]
let ratInterval =       [["10/02/1948", "28/01/1949"],["28/01/1960", "14/02/1961"],["16/01/1972", "02/02/1973"],["02/02/1984", "19/02/1985"],["19/02/1996", "07/02/1997"],["07/02/2008", "25/01/2009"]]

let horoscopeIntervals = [oxInterval, tigerInterval, hareInterval, dragonInterval, snakeInterval, horseInterval, goatInterval, monkeyInterval, roosterInterval, dogInterval, pigInterval, ratInterval]

let ox = Horoscope(name: "Ox", descriptionText:  oxText, imageName: "oxImage", firstAnimalCompatible: 4, secondAnimalCompatible: 8)
let tiger = Horoscope(name: "Tiger", descriptionText: tigerText, imageName: "tigerImage", firstAnimalCompatible: 5, secondAnimalCompatible: 9)
let hare = Horoscope(name: "Hare", descriptionText: hareText, imageName: "hareImage", firstAnimalCompatible: 10, secondAnimalCompatible: 6)
let dragon = Horoscope(name: "Dragon", descriptionText: dragonText, imageName: "dragonImage", firstAnimalCompatible: 11, secondAnimalCompatible: 7)
let snake = Horoscope(name: "Snake", descriptionText: snakeText, imageName: "snakeImage",  firstAnimalCompatible: 8, secondAnimalCompatible: 0)
let horse = Horoscope(name: "horse", descriptionText: horseText, imageName: "horseImage",  firstAnimalCompatible: 1, secondAnimalCompatible: 9)
let goat = Horoscope(name: "Goat", descriptionText: goatText, imageName: "goatImage", firstAnimalCompatible: 10, secondAnimalCompatible: 2)
let monkey = Horoscope(name: "Monkey", descriptionText: monkeyText, imageName: "monkeyImage", firstAnimalCompatible: 11, secondAnimalCompatible: 3)
let rooster = Horoscope(name: "Rooster", descriptionText: roosterText, imageName: "roosterImage", firstAnimalCompatible: 4, secondAnimalCompatible: 0)
let dog = Horoscope(name: "Dog", descriptionText: dogText, imageName: "dogImage", firstAnimalCompatible: 1, secondAnimalCompatible: 5)
let pig = Horoscope(name: "Pig", descriptionText: pigText, imageName: "pigImage", firstAnimalCompatible: 2, secondAnimalCompatible: 6)
let rat = Horoscope(name: "Rat", descriptionText: ratText, imageName: "ratImage", firstAnimalCompatible: 3, secondAnimalCompatible: 7)

let oxText = "•Strengths: \(Strengths.confident), \(Strengths.contemplative), \(Strengths.observant) and \(Strengths.determined)\n\n•Weaknesses: \(Weaknesses.stubborn), \(Weaknesses.petty), \(Weaknesses.egotistical) and \(Weaknesses.judgmental)\n\nAccording to legend, if wasn’t for Ox’s innately kind, generous nature – and for Rat’s guile – Ox would be first in Sheng Xiao./nIn the famous race that determined this zodiac, Rat utilized not only Ox’s kindness, but also her capability. Knowing her strength and steadiness both on land and in water, Rat made a deal with Ox to ride across the water on her back, only to jump off near the finish line and win."
let tigerText = "•Strengths: \(Strengths.outspoken), \(Strengths.adventurous), \(Strengths.unconventional) and \(Strengths.enthusiastic)\n\n•Weaknesses: \(Weaknesses.aggressive), \(Weaknesses.arrogant) and \(Weaknesses.anxious)\n\nTiger is a prideful creature. After struggling to the shore in the last leg of the race that determined his place in the zodiac, Tiger was panting and exhausted in third place. He explained how difficult it was to swim against the current, and boasted about how strong he was to have succeeded."
let hareText = "•Strengths: \(Strengths.intuitive), \(Strengths.gentle), \(Strengths.faithful) and \(Strengths.compassionate)\n\n•Weaknesses: \(Weaknesses.pessimistic), \(Weaknesses.insecure), \(Weaknesses.vain) and \(Weaknesses.finicky)\n\nThough Hare couldn’t swim, she was still able to finish the all-important race that secured her position in the zodiac. She came in fourth by jumping from stone to stone past mid-river, and then was lucky enough to find a floating log to ride to the opposite shore (with Dragon’s generous help, of course). Typical Hare – sizing up the situation and calmly making it work with a dose of good luck."
let dragonText = "•Strengths: \(Strengths.courageous), \(Strengths.intelligent), \(Strengths.charismatic) and \(Strengths.passionate)\n\n•Weaknesses: \(Weaknesses.impetuous), \(Weaknesses.inflexible) and \(Weaknesses.brash)\n\nOh, Dragon, what a creature. This magical and selfless being finished the Jade Emperor’s race in fifth place because, while flying to the finish line, he saw how thirsty the people, animals, and land were. Knowing that he could assuage the suffering of humanity, Dragon stopped and made it rain. Then he noticed Rabbit stuck in the middle of the river on a log and blew her to shore, enabling Rabbit to finish ahead of Dragon."
let snakeText = "•Strengths: \(Strengths.wise), \(Strengths.enigmatic), \(Strengths.intuitive) and \(Strengths.sympathetic)\n\n•Weaknesses: \(Weaknesses.hedonistic), \(Weaknesses.vain), \(Weaknesses.malicious) and \(Weaknesses.duplicitous)\n\nIt is said that Snake managed to come in sixth place only by hiding in Horse’s hoof, demonstrating that she plans meticulously and do whatever is necessary to achieve a goal.\nOften referred to as Little Dragon, the coiled Snake is an ancient symbol in China and is considered the precursor of the Dragon. Some ancient Chinese worshipped the Snake and believed it was connected with the beginning of the Universe."
let horseText = "•Strengths: \(Strengths.virile), \(Strengths.easygoing), \(Strengths.witty) and \(Strengths.honest)\n\n•Weaknesses: \(Weaknesses.impatient) and \(Weaknesses.impulsive)\n\nIt is said that Horse would have finished the race in sixth place, but Snake snuck a ride in the equine hoof, unbeknownst to the host. When Snake jumped ashore, she startled Horse. In typical Horse fashion, this majestic creature reared back, and Snake slithered across the finish line first. This story exemplifies how Horse may run with full speed, strength, and intent after goals, promises, and love interests, but can also scare easily. "
let goatText = "•Strengths: \(Strengths.intelligent), \(Strengths.romantic), \(Strengths.charming) and \(Strengths.compassionate)\n\n•Weaknesses: \(Weaknesses.disorganized), \(Weaknesses.lazy), \(Weaknesses.pessimistic) and \(Weaknesses.timid)\n\nIt is said that three animals worked together as a team to cross the finish line of the Jade Emperor’s race: Rooster, Monkey, and Goat.\nRooster found a raft, and Goat and Monkey cleared it of weeds and carried it to the water. The three sailed to the opposite shore and crossed the finish line together."
let monkeyText = "•Strengths: \(Strengths.confident), \(Strengths.charming), \(Strengths.humorous) and \(Strengths.exuberant)\n\n•Weaknesses: \(Weaknesses.distrustful), \(Weaknesses.arrogant), \(Weaknesses.opportunistic) and \(Weaknesses.erratic)\n\nIn the great race that secured their spots in the Zodiac, it’s said that Rooster, Sheep, and Monkey worked together to cross the finish line. Rooster found a raft, then Monkey and Sheep cleared it of weeds and carried it to the water. (Of course you’d want Monkey in on any plan, because not only are they great fun, but Monkeys can also figure out how to untangle anything and keep everyone’s energy centered and moving forward.) The three animals sailed the raft to the opposite shore and crossed the finish line together. Monkey was accorded the ninth position."
let roosterText = "•Strengths: \(Strengths.charming), \(Strengths.witty), \(Strengths.honest) and \(Strengths.blunt)\n\n•Weaknesses: \(Weaknesses.controlling), \(Weaknesses.insensitive), \(Weaknesses.selfish) and \(Weaknesses.reckless)\n\nLeader of the legendary team of Sheng Xiao, Rooster is the one who found the raft that carried Monkey and Sheep across the river to finish the race that determined their places in this Zodiac.\nAs the most observant and hardworking animal in the calendar, of course Rooster would spot a raft, and probably congratulate himself about it all the way across the river. "
let dogText = "•Strengths: \(Strengths.animated), \(Strengths.likable), \(Strengths.witty) and \(Strengths.sincere)\n\n•Weaknesses: \(Weaknesses.pessimistic), \(Weaknesses.cynical), \(Weaknesses.paranoid) and \(Weaknesses.stubborn)\n\nEven though he is one of the strongest swimmers, Dog came in eleventh because he stopped to play and bathe in the water.\nNot only exuberant and playful, Dog’s humanitarian side is highlighted in another story. When Dog used to have nine tails he snuck into Heaven to steal grain for humanity, but the guards of heaven chopped off eight of his tails as he was escaping. Dog carried the grain back to Earth stuck on his remaining tail — and that is why stalks of grain look like a dog’s tail."
let pigText = "•Strengths: \(Strengths.intelligent), \(Strengths.thoughtful), \(Strengths.creative) and \(Strengths.responsible)\n\n•Weaknesses: \(Weaknesses.gullible), \(Weaknesses.materialistic) and \(Weaknesses.insecure)\n\nIn the great race that determined the animals’ position in the Zodiac, Pig barely made twelfth place. Why? She stopped to eat and take a nap in the middle of the competition – demonstrating the easygoing sensuality of this sign. And yet, those born in the year of the Pig are good planners and organizers, work relentlessly to achieve their goals, and complete projects on time.  "
let ratText = "•Strengths: \(Strengths.wise), \(Strengths.unique), \(Strengths.intelligent) and \(Strengths.crafty)\n\n•Weaknesses: \(Weaknesses.acquisitiveness), \(Weaknesses.ruthlessness) and \(Weaknesses.nervousness)\n\nAssociated with new beginnings, Rat is the first animal in the Chinese Zodiac. The story varies on how the crafty creature got this coveted spot.Some say that Rat was the hero who bit the dark egg of the world, creating a crack to let in air and start creation. Others say that when the Buddha (or Jade Emperor) called on all animals to help mankind, Rat got there first using somewhat underhanded skills."
