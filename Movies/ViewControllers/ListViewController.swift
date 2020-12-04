//
//  ListViewController.swift
//  Movies
//
//  Created by Evgeniy Chernyshov on 01/12/2020.
//  Copyright © 2020 Evgeniy Chernyshov. All rights reserved.
//  Swift 5

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    private var films = [Films]()
    private var genres = [Genres]()
    
    func getFilms() {
        Networking.shared.getAllMovies(value: "/movie/popular?api_key=a837e864210a43d0d8485e7294324e9e&language=en-US&page=1") { films in
            self.films = films
            self.tableView.reloadData()
        }
    }
    
    func getGenres() {
        Networking.shared.getAllGenres(value: "/genre/movie/list?api_key=a837e864210a43d0d8485e7294324e9e&language=en-US") { genres in
            self.genres = genres
            self.tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(self.longPress(longPressGestureRecognizer:)))
        self.view.addGestureRecognizer(longPressRecognizer)
        getFilms()
        
        
    }
    
    @objc func longPress(longPressGestureRecognizer: UILongPressGestureRecognizer) {
        
        if longPressGestureRecognizer.state == UIGestureRecognizer.State.began {
            
            let touchPoint = longPressGestureRecognizer.location(in: self.view)
            if self.tableView.indexPathForRow(at: touchPoint) != nil  {
                tableView.backgroundColor = .red
            }
        }
    }
    
    
}
extension ListViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(films.count)
        return films.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell" , for: indexPath) as! ListCell
        
        let film = films[indexPath.row]
        cell.setMovie(movie: film)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        vc.modalPresentationStyle = .formSheet
        vc.film = films[indexPath.row]
        present(vc, animated: true, completion: nil)
        
    }
}
