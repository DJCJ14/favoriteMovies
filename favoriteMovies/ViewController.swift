//
//  ViewController.swift
//  favoriteMovies
//
//  Created by DEKLAN KIRK on 10/21/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    
    var names = ["Se7en", "Shawshank Redemeption", "Star Wars A New Hope", "Fight Club", "Interstellar","Inception","Forrest Gump","Extraction","Spiderman into the Spiderverse","One flew over the Cuckoos Nest","Pulp Fiction","Kill Bill"]
    var years = ["1995", "1994", "1977", "1999", "2014","2010","1994","2020","2018","1975","1994","2003"]
    var ratings = ["8.6","9.3","8.6","8.8","8.6","8.8","8.8","6.7","8.4","8.7","8.9","8.2"]
    
    var atRow: Int!
    var movie: String!
    var years1: String!
    var ratings1: String!
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as!TableViewCell
        cell.configure(name:names[indexPath.row], year:years[indexPath.row], rating:ratings[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        atRow = indexPath.row
        performSegue(withIdentifier: "toInfo", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let movie = names[atRow]
        let years1 = years[atRow]
        let ratings1 = ratings[atRow]
        let svc = segue.destination as! ViewController2
        svc.movieText = movie
        svc.ratingText = ratings1
        svc.yearText = years1
    }
    
    @IBAction func addAction(_ sender: UIBarButtonItem) {
        if (textFieldOutlet.text != ""){
            names.append(textFieldOutlet.text!)
            years.append("N/A")
            ratings.append("N/A")
            tableViewOutlet.reloadData()
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
            names.remove(at: names.count - 1)
            years.remove(at: years.count - 1)
            ratings.remove(at: ratings.count - 1)
            tableViewOutlet.reloadData()
        }
    }
    
}

