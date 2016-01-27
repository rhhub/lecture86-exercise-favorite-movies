//
//  NewPostVC.swift
//  lecture86-exercise-favorite-movies
//
//  Created by Ryan Huebert on 1/26/16.
//  Copyright © 2016 Ryan Huebert. All rights reserved.
//

import UIKit
import CoreData

class NewPostVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet private weak var imageView: UIImageView!
    
    @IBOutlet private weak var titleField: UITextField!
    
    @IBOutlet private weak var descriptionText: UITextView!
    
    @IBOutlet private weak var linkField: UITextField!
    
    @IBOutlet weak var addPicButton: UIButton!
    
    private var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addPicBtnPressed(sender: AnyObject) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func submitBtnPressed(sender: AnyObject) {
        if let image = imageView.image, let title = titleField.text, let desc = descriptionText.text, let link = linkField.text {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            
            movie.setMovieImage(image)
            movie.title = title
            movie.movieDescription = desc
            movie.link = link
            
            do {
                try context.save()
                self.navigationController?.popToRootViewControllerAnimated(true)
                
            } catch let err as NSError {
                print("Could not save movie. Error description: \(err.description)")
            }
            
        } else {
            print("Please complete all fields")
        }
        
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        addPicButton.titleLabel?.text = ""
        picker.dismissViewControllerAnimated(true, completion: nil)
        imageView.image = image
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
