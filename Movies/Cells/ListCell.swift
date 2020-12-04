//
//  ListCell.swift
//  Movies
//
//  Created by apple on 01.12.2020.
//

import UIKit

class ListCell: UITableViewCell {


    @IBOutlet var filmPicture: UIImageView!
    
    @IBOutlet var filmOverview: UILabel!
    @IBOutlet var filmName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setMovie(movie: Movie){
        filmPicture.image = movie.image
        filmName.text = movie.name
        filmOverview.text = movie.overview
    }
}
