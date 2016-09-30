//
//  ViewController.swift
//  Matt
//
//  Created by Pablo Elustondo on 2016-09-26.
//  Copyright © 2016 Pablo Elustondo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Message.text = ""
        // Handle the text field’s user input through delegate callbacks.
        ConcernName.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK: Properties

    @IBOutlet weak var ConcernName: UITextField!
 
    @IBOutlet weak var Message: UILabel!

    @IBOutlet weak var ConcernImage: UIImageView!
    
    
// MARK: Action
    
    @IBAction func ConcernSave(sender: UITextField) {
        
        Message.text = "saved succesfully"
    }
    
    @IBAction func ConcernImageTapped(sender: UITapGestureRecognizer) {
        
        Message.text = "image tapped"
        
        // Hide the keyboard.
        ConcernName.resignFirstResponder()
        
        // UIImagePickerController is a view controller that lets a user pick media from their photo library.
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        imagePickerController.sourceType = .PhotoLibrary
        
        // Make sure ViewController is notified when the user picks an image.
        imagePickerController.delegate = self
        
        presentViewController(imagePickerController, animated: true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // The info dictionary contains multiple representations of the image, and this uses the original.
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // Set photoImageView to display the selected image.
        ConcernImage.image = selectedImage
        
        // Dismiss the picker.
        dismissViewControllerAnimated(true, completion: nil)
    }

// MARK: UIField Delegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        Message.text = ConcernName.text
    }
}

