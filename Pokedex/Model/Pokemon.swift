//
//  Pokemon.swift
//  MVC
//
//  Created by Luis Sergio Duran Arenas on 29/07/23.
//

import Foundation

struct Pokemon {
    let name : String?
    let image : String?
    let abilities : [String]?
    
    init(dict : [String : Any]) {
        self.name = dict["name"] as! String?
        self.image = dict["image"] as! String?
        self.abilities = dict["abilities"] as! [String]?
    }
}
