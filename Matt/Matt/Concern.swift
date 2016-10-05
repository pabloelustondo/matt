//
//  Concern.swift
//  Matt
//
//  Created by Pablo Elustondo on 2016-10-05.
//  Copyright © 2016 Pablo Elustondo. All rights reserved.
//

// import Foundation
import UIKit

class Concern {
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var status: Int
    
    // MARK: Initialization
    
    init?(name: String, photo: UIImage?, status: Int) {
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.status = status
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || status < 0 {
            return nil
        }
    }
}
