//
//  DetailViewController.swift
//  Flixster
//
//  Created by Ahmed on 3/6/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieImageview: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var voteLabel: UILabel!
    
    @IBOutlet weak var populilarityLabel: UILabel!
    
    @IBOutlet weak var totalVotesLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var film: Film!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Nuke.loadImage(with: film.artWorkUrl100, into: movieImageview)
        
        movieNameLabel.text = film.original_title
        voteLabel.text = String(film.vote_average)
        totalVotesLabel.text = String(film.vote_count)
        descriptionLabel.text = film.overview
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
