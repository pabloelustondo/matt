//
//  ViewController.swift
//  Matt
//
//  Created by Pablo Elustondo on 2016-09-26.
//  Copyright © 2016 Pablo Elustondo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

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
    
    @IBAction func ConcernSave(sender: AnyObject) {
        
        Message.text = "saved succesfully"
    }
    
    @IBAction func selectConcernIage(sender: AnyObject) {
        
        Message.text = "Image Tapped"
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

