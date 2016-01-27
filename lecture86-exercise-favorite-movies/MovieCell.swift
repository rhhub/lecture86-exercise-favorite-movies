//
//  MovieCell.swift
//  lecture86-exercise-favorite-movies
//
//  Created by Ryan Huebert on 1/26/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet private weak var movieImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var descriptionField: UITextField!
    @IBOutlet private weak var linkLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        movieImageView.layer.cornerRadius = 10.0
        movieImageView.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(movie: Movie) {
        movieImageView.image = movie.getMovieImage()
        titleLabel.text = movie.title
        descriptionField.text = movie.movieDescription
        linkLabel.text = movie.link
    }

}
