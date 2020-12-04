//
//  ListCell.swift
//  Movies
//
//  Created by Evgeniy Chernyshov on 01/12/2020.
//  Copyright © 2020 Evgeniy Chernyshov. All rights reserved.
//  Swift 5

import UIKit
import SDWebImage
import SnapKit

class ListCell: UITableViewCell {
    
    
    @IBOutlet var filmPicture: UIImageView!
    @IBOutlet var filmOverview: UILabel!
    @IBOutlet var filmName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func setMovie(movie: Films){
        
       // filmPicture.sd_setImage(with: movie.imageURL)
        filmName.text = movie.filmTitle
        filmOverview.text = movie.overview
        //localImages (hardcode)
        if filmName.text == "Historias lamentables" {
            filmPicture.image = HistoriasLamentables
        } else if filmName.text == "Fatman" {
            filmPicture.image = Fatman
        } else if filmName.text == "Chick Fight" {
            filmPicture.image = ChickFight
        } else if filmName.text == "Rogue Warfare: Death of a Nation" {
            filmPicture.image = RogueWarfareDeathOfANation
        } else if filmName.text == "Hard Kill" {
            filmPicture.image = HardKill
        } else if filmName.text == "Vampire Virus" {
            filmPicture.image = VampireVirus
        } else if filmName.text == "Joker" {
            filmPicture.image = Joker
        } else if filmName.text == "Greenland" {
            filmPicture.image = Greenland
        } else if filmName.text == "반도" {
            filmPicture.image = pic1
        } else if filmName.text == "Roald Dahl's The Witches" {
            filmPicture.image = RoaldDahlsTheWitches
        } else if filmName.text == "Bronx" {
            filmPicture.image = Bronx
        } else if filmName.text == "Jiu Jitsu" {
            filmPicture.image = JiuJitsu
        } else if filmName.text == "Welcome to Sudden Death" {
            filmPicture.image = WelcomeToSuddenDeath
        } else if filmName.text == "Mulan" {
            filmPicture.image = Mulan
        }else if filmName.text == "Tenet" {
            filmPicture.image = Tenet
        } else if filmName.text == "The SpongeBob Movie: Sponge on the Run" {
            filmPicture.image = TheSpongeBobMovieSpongeOnTheRun
        } else if filmName.text == "Upside-Down Magic" {
            filmPicture.image = UpsideDownMagic
        } else if filmName.text == "Enola Holmes" {
            filmPicture.image = EnolaHolmes
        } else if filmName.text == "Ava" {
            filmPicture.image = Ava
        } else if filmName.text == "劇場版「鬼滅の刃」無限列車編" {
            filmPicture.image = pic2
        }
    }
}
