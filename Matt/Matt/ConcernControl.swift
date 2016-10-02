//
//  ConcernControl.swift
//  Matt
//
//  Created by Pablo Elustondo on 2016-09-30.
//  Copyright © 2016 Pablo Elustondo. All rights reserved.
//

import UIKit

class ConcernControl: UIView{

    // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let button = UILabel(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        button.backgroundColor = UIColor.yellowColor()
        button.text = "1"
        button.textAlignment = NSTextAlignment.Center
        addSubview(button)
        let button2 = UILabel(frame: CGRect(x: 30, y: 0, width: 30, height: 30))
        button2.backgroundColor = UIColor.greenColor()
        addSubview(button2)
        let button3 = UILabel(frame: CGRect(x: 60, y: 0, width: 30, height: 30))
        button3.backgroundColor = UIColor.cyanColor()

 
        addSubview(button3)
    }

    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 200, height: 30)
    }
    
    

}
