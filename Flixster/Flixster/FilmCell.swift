//
//  FilmCell.swift
//  Flixster
//
//  Created by Ahmed on 3/6/23.
//

import UIKit
import Nuke

class FilmCell: UITableViewCell {
    
    @IBOutlet weak var filmImageView: UIImageView!
    @IBOutlet weak var filmNameLabel: UILabel!
   
    
    @IBOutlet weak var filmDescription: UILabel!
    
    //To load the image from the URL
    func configure(with film: Film) {
        filmNameLabel.text = film.original_title
        filmDescription.text = film.overview
        
        Nuke.loadImage(with: film.artWorkUrl100, into: filmImageView)
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
