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
   
    func flavor(forPerson person: String) -> String? {
        var result: String? = nil
        for (name, yourFlavor) in favoriteFlavorsOfIceCream {
            if name == person {
                result = yourFlavor
            }
        }
        if let result = result {
            return result
        } else {
            return result
        }
    }
    
    
    // 5.
   
    func replace(flavor: String, forPerson inputName: String) -> Bool {
        var result: Bool = false
        for (name, oldFlavor) in favoriteFlavorsOfIceCream {
            if flavor != oldFlavor && name == inputName {
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: inputName)
                result = true
            } else {
                result = false
            }
        }
        return result
    }
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        let removeResponse = favoriteFlavorsOfIceCream.removeValue(forKey: person)
        switch removeResponse {
        case .some : return true
        case .none : return false
        }
    }
    
    
    // 7.
    
    func numberOfAttendees () -> Int {
        return favoriteFlavorsOfIceCream.count
    }

    
    // 8.
    
    func add(person:String, flavor:String) -> Bool {
        /// I need help understanding line 15. (I put the rest together myself.) In my head, row 15 says: Do this if whatever String passed in as the Person argument doesn't match any of the keys in the favoriteFlavorsOfIceCream dictionary.
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    
    
    // 9.
    
    func attendeeList() -> String {
        
        /// Converting the keys of my dictionary into a sorted array
        let orderedNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        /// Empty string for the String I'll return
        var result = ""
        
        /// Counter that I'll increment in my loop to create a new line(?)
        var count = 0
        
        /// For each name in my ordered array, build the string that needs to be returned, and increment the counter each pass
        for name in orderedNames {
            count += 1
            /// Why 'if let' and why [name]? (How does the compiler know about name?)
            if let iceCream = favoriteFlavorsOfIceCream[name] {
                result += "\(name) likes \(iceCream)"
            }
            
            if count < orderedNames.count {
                result += "\n"
            }
        }
        print(result)
        return result
    }
}
