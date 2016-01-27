//
//  DetailVC.swift
//  lecture86-exercise-favorite-movies
//
//  Created by Ryan Huebert on 1/26/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieDescription: UITextView!
    
    @IBOutlet weak var movieLink: UILabel!
    
    private weak var mov: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = mov.getMovieImage()
        movieTitle.text = mov.title
        movieDescription.text = mov.movieDescription
        movieLink.text = mov.link
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func configureVC(movie: Movie) {
        mov = movie
    }
}
