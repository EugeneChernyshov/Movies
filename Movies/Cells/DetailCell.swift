//
//  DetailCell.swift
//  Movies
//
//  Created by Evgeniy Chernyshov on 01/12/2020.
//  Copyright © 2020 Evgeniy Chernyshov. All rights reserved.
//  Swift 5

import UIKit

class DetailCell: UITableViewCell {

    @IBOutlet var detailsImage: UIImageView!
    
    @IBOutlet var detailsName: UILabel!
    @IBOutlet var detailsYear: UILabel!
    @IBOutlet var detailsOverview: UILabel!
    
    func setDetail(movie: Films) {
        detailsYear.text = "Release date: \(movie.releaseDate)"
        detailsOverview.text = movie.overview
        detailsName.text = movie.filmTitle
        if detailsName.text == "Historias lamentables" {
            detailsImage.image = HistoriasLamentables
        } else if detailsName.text == "Fatman" {
            detailsImage.image = Fatman
        } else if detailsName.text == "Chick Fight" {
            detailsImage.image = ChickFight
        } else if detailsName.text == "Rogue Warfare: Death of a Nation" {
            detailsImage.image = RogueWarfareDeathOfANation
        } else if detailsName.text == "Hard Kill" {
            detailsImage.image = HardKill
        } else if detailsName.text == "Vampire Virus" {
            detailsImage.image = VampireVirus
        } else if detailsName.text == "Joker" {
            detailsImage.image = Joker
        } else if detailsName.text == "Greenland" {
            detailsImage.image = Greenland
        } else if detailsName.text == "반도" {
            detailsImage.image = pic1
        } else if detailsName.text == "Roald Dahl's The Witches" {
            detailsImage.image = RoaldDahlsTheWitches
        } else if detailsName.text == "Bronx" {
            detailsImage.image = Bronx
        } else if detailsName.text == "Jiu Jitsu" {
            detailsImage.image = JiuJitsu
        } else if detailsName.text == "Welcome to Sudden Death" {
            detailsImage.image = WelcomeToSuddenDeath
        } else if detailsName.text == "Mulan" {
            detailsImage.image = Mulan
        }else if detailsName.text == "Tenet" {
            detailsImage.image = Tenet
        } else if detailsName.text == "The SpongeBob Movie: Sponge on the Run" {
            detailsImage.image = TheSpongeBobMovieSpongeOnTheRun
        } else if detailsName.text == "Upside-Down Magic" {
            detailsImage.image = UpsideDownMagic
        } else if detailsName.text == "Enola Holmes" {
            detailsImage.image = EnolaHolmes
        } else if detailsName.text == "Ava" {
            detailsImage.image = Ava
        } else if detailsName.text == "劇場版「鬼滅の刃」無限列車編" {
            detailsImage.image = pic2
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
