//
//  ViewController.swift
//  Matt
//
//  Created by Pablo Elustondo on 2016-09-26.
//  Copyright © 2016 Pablo Elustondo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Message.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// MARK: Properties

    @IBOutlet weak var ConcernName: UITextField!
 
    @IBOutlet weak var Message: UILabel!
    
// MARK: Action
    
    @IBAction func ConcernSave(sender: AnyObject) {
        
        Message.text = "saved succesfully"
    }
}

