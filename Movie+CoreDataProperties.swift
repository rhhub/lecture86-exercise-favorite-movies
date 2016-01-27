//
//  Movie+CoreDataProperties.swift
//  lecture86-exercise-favorite-movies
//
//  Created by Ryan Huebert on 1/26/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var title: String?
    @NSManaged var movieDescription: String?
    @NSManaged var link: String?
    @NSManaged var image: NSData?

}
