//
//  Genres.swift
//  Movies
//
//  Created by Evgeniy Chernyshov on 01/12/2020.
//  Copyright © 2020 Evgeniy Chernyshov. All rights reserved.
//  Swift 5

import Foundation


struct Genres: Codable {

    var name: String
    var id: Int
    
    init(with genreDictionary: [String: Any]) {
        id = genreDictionary["id"] as? Int ?? 0
        name = genreDictionary["name"] as? String ?? ""
    }
    
}

