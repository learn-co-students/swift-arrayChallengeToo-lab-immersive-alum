//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    var line:[String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
        
        // TODO: Implement this function.
        if (name=="Billy Crystal" || name=="Meg Ryan"){
            line.insert(name,at:0)
        }
        else{
            line.append(name)
        }
        if name=="Billy Crystal"{
            return "Welcome Billy Crystal! You can sit wherever you like."
        }
            
        else if name=="Meg Ryan"{
            return "Welcome Meg Ryan! You can sit wherever you like."
        }
        
        
        if line[0]==name{
            return "Welcome \(name), you're first in line!"
        }
        
        var ind=line.index(of:name)!
        return "Welcome \(name), you're number \(ind + 1) in line."
        
    }
//2
    func nowServing()->String{
        if line.count==0{
        return "There is no one to be served."
        }
            else{
                let customer=line[0]
                line.remove(at: 0)
                return "Now serving \(customer)!"
            }
        }
    
    
    
//3
    func lineDescription()->String{
        if line.count==0{
            return "The line is currently empty."
        }
        else{
            var fullLine="The line is:"
            for (index,name) in line.enumerated(){
                fullLine+="\n\(index + 1). " + "\(name)"
            }
            return fullLine
        }
}
}
