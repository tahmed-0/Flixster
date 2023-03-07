//
//  DetailViewController.swift
//  Flixster
//
//  Created by Ahmed on 3/6/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var movieImageview: UIImageView!
    
    @IBOutlet weak var movieNameLabel: UILabel!
    
    @IBOutlet weak var voteLabel: UILabel!
    
    @IBOutlet weak var populilarityLabel: UILabel!
    
    @IBOutlet weak var totalVotesLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
