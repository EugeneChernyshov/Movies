//
//  FavouritesViewController.swift
//  Movies
//
//  Created by apple on 28.11.2020.
//

import UIKit

class FavouritesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension FavouritesViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
