//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var people = [String]()
        for (name, iceCream) in favoriteFlavorsOfIceCream {
            if iceCream == flavor {
                people.append(name)
            }
        }
        return people
    }
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var count = 0
        for (_, iceCreamType) in favoriteFlavorsOfIceCream {
            if flavor == iceCreamType {
                count += 1
            }
        }
        return count
    }
    
    
    // 4.
   
    func flavor(forPerson name: String) -> String {
        
    }
    
    
    
    
    
    // 5.
   
    
    
    
    
    
    
    // 6.
    
    
    
    
    
    
    
    
    // 7.
    
    
    
    
    
    
    
    
    // 8.
    
    
    
    
    
    
    
    
    
    // 9.
    
    
    
    
    
    
    
    

}
