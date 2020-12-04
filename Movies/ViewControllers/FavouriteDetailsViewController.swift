//
//  FavouriteDetailsViewController.swift
//  Movies
//
//  Created by Evgeniy Chernyshov on 01/12/2020.
//  Copyright © 2020 Evgeniy Chernyshov. All rights reserved.
//  Swift 5

import UIKit

class FavouriteDetailsViewController: UIViewController {

    @IBOutlet var favouriteDetailsFilmName: UILabel!
    
    @IBOutlet var filmGenre: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func setTitleFavourites(movie: Films) {
        favouriteDetailsFilmName.text = movie.filmTitle
    }
    func setGenreDetail(genre: Genres) {
        filmGenre.text = genre.name
    }
}
