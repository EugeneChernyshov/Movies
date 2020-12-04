//
//  Films.swift
//  Movies
//
//  Created by Evgeniy Chernyshov on 01/12/2020.
//  Copyright © 2020 Evgeniy Chernyshov. All rights reserved.
//  Swift 5

import Foundation
import UIKit

struct Films: Codable {

    var filmTitle: String
    var releaseDate: String
    var overview: String
   
    var imageURL: URL?
    
    init(with filmDictionary: [String: Any]) {
        filmTitle = filmDictionary["original_title"] as? String ?? ""
        releaseDate = filmDictionary["release_date"] as? String ?? ""
        overview = filmDictionary["overview"] as? String ?? ""
        imageURL = URL(string: filmDictionary["poster_path"] as? String ?? "")
        
    }
    
}
