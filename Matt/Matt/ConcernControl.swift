//
//  ConcernControl.swift
//  Matt
//
//  Created by Pablo Elustondo on 2016-09-30.
//  Copyright © 2016 Pablo Elustondo. All rights reserved.
//

import UIKit

class ConcernControl: UIView {

    // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        button.backgroundColor = UIColor.redColor()
        addSubview(button)
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 200, height: 30)
    }
    
    

}
