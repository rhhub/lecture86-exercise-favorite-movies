//
//  Movie.swift
//  lecture86-exercise-favorite-movies
//
//  Created by Ryan Huebert on 1/26/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import Foundation
import UIKit
import CoreData


class Movie: NSManagedObject {

// Insert code here to add functionality to your managed object subclass

    func setMovieImage(img: UIImage) {
        
        let imageData = UIImagePNGRepresentation(img)
        image = imageData
    }
    
    func getMovieImage() -> UIImage? {
        if let data = image {
            let img = UIImage(data: data)
            return img

        } else {
            return nil
        }
    }
    
    
    
}
