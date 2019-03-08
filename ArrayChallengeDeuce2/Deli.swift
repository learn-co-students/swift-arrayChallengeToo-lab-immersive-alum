//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
        switch name {
        case "Billy Crystal":
            line.insert(name, at: 0)
        case "Meg Ryan":
            line.insert(name, at: 0)
        default:
            line.append(name)
        }
        
        switch name {
        case "Billy Crystal":
            return "Welcome \(name)! You can sit wherever you like."
        case "Meg Ryan":
            return "Welcome \(name)! You can sit wherever you like."
        default:
            if line.count == 1 {
                return "Welcome \(name), you're first in line! "
            } else {
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        let customer = line[0]
        line.remove(at: 0)
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            return "Now serving \(customer)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        let customers = line
        var lineState = ""
        if line.isEmpty {
            lineState = "The line is currently empty."
        } else {
            for (index, customer) in customers.enumerated() {
                lineState = "The line is: \(index + 1). \(customer)"
            }
        }
        print(lineState)
        return lineState
    }
    
}
