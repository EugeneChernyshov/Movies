//
//  DetailsViewController.swift
//  Movies
//
//  Created by Evgeniy Chernyshov on 01/12/2020.
//  Copyright © 2020 Evgeniy Chernyshov. All rights reserved.
//  Swift 5

import UIKit

class DetailsViewController: UITableViewController {
    var film: Films?

    
    @IBOutlet var overviewLabel: UILabel!
    @IBOutlet var releaseDate: UILabel!
    @IBOutlet var detailsImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
        
   
//    func setProduct(product: Product) {
//        detailImageView.image = product.image
//        detailName.text = product.title
//        detailPrice.text = product.price
//        detailInfo.text = product.info
//    }
    
 



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
  
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell") as! DetailCell

        if let currentFilm = film {
            cell.setDetail(movie: film!)
        }

        return cell
    }

    
  
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        800
    }

}
