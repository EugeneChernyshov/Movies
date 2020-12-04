//
//  FavouritesViewController.swift
//  Movies
//
//  Created by Evgeniy Chernyshov on 01/12/2020.
//  Copyright © 2020 Evgeniy Chernyshov. All rights reserved.
//  Swift 5

import UIKit

class FavouritesViewController: UIViewController {
    
    var terms = ["1" , "2" , "3"]
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
}

extension FavouritesViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return terms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavouritesCell" , for: indexPath) as! FavouritesCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "FavouriteDetailsViewController") as! FavouriteDetailsViewController
        // let model = movies[indexPath.section]
        vc.modalPresentationStyle = .formSheet
        // vc.model = movies[indexPath.section]
        present(vc, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            terms.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
    
        }
    }
}

