//
//  Networking.swift
//  Movies
//
//  Created by Evgeniy Chernyshov on 01/12/2020.
//  Copyright © 2020 Evgeniy Chernyshov. All rights reserved.
//  Swift 5
import Foundation
import Alamofire

class Networking {
    
    static let shared = Networking()
    
    private var baseURL = "https://api.themoviedb.org/3"
 
    func getAllMovies(value: String, completion: (([Films]) -> Void)?) {
        AF.request(self.baseURL + value, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response
        { (responseData) in
            guard let data = responseData.data else {return}
            do {
                
                let jsonResponse = try JSONSerialization.jsonObject(with: data, options: [])
                guard let jsonArray = jsonResponse as? [String: Any], let results = jsonArray["results"] as? [[String: Any]] else { return }
                var films = [Films]()
                results.forEach({ films.append(Films(with: $0)) })
                print(films.count)
                completion?(films)
            } catch {
                print("Error decoding == \(error)")
            }
        }
    }
    
    func getAllGenres(value: String, completion: (([Genres]) -> Void)?) {
        AF.request(self.baseURL + value, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response
        { (responseData) in
            guard let data = responseData.data else {return}
            do {
                
                let jsonResponse = try JSONSerialization.jsonObject(with: data, options: [])
                guard let jsonArray = jsonResponse as? [String: Any], let movieGenres = jsonArray["genres"] as? [[String: Any]] else { return }
                var genres = [Genres]()
             movieGenres.forEach({ genres.append(Genres(with: $0)) })
                print(genres.count)
                completion?(genres)
            } catch {
                print("Error decoding == \(error)")
            }
        }
    }
    
}
