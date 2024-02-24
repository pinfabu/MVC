//
//  Pokemon.swift
//  MVC
//
//  Created by Juan Carlos Díaz Valenzuela on 23/02/24.
//

import Foundation

struct Pokemon {
    let name : String
    let image : String
    let ability : String
    
    init(dict : [String : String]){
        self.name = dict["name"]!
        self.image = dict["image"]!
        self.ability = dict["ability"]!
        
    }
}
