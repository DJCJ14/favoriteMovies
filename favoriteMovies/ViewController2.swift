//
//  ViewController2.swift
//  favoriteMovies
//
//  Created by DEKLAN KIRK on 10/24/22.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var movieOutlet: UILabel!
    
    @IBOutlet weak var yearOutlet: UILabel!
    
    @IBOutlet weak var ratingOutlet: UILabel!
    
    var movieText:String!
    var yearText:String!
    var ratingText:String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieOutlet.text = movieText
        yearOutlet.text = yearText
        ratingOutlet.text = ratingText

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
