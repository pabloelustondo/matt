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
        let rightBorder = self.frame.width
        let boxWidth = 30
        let middleBoxStart = (rightBorder - CGFloat(boxWidth))/2
     
        
        //Day achivement / comitment
        let button = UILabel(frame: CGRect(x: 0, y: 0, width: boxWidth, height: boxWidth))
        button.backgroundColor = UIColor.yellowColor()
        button.text = "1"
        button.textAlignment = NSTextAlignment.Center
        addSubview(button)
        
        
        //General Status
        let button2 = UILabel(frame: CGRect(x: Int(middleBoxStart), y: 0, width: boxWidth, height: boxWidth))
        button2.backgroundColor = UIColor.greenColor()
        addSubview(button2)
        
        
        //SubConcerns
        let button3 = UILabel(frame: CGRect(x: Int(rightBorder) - boxWidth, y: 0, width: boxWidth, height: boxWidth))
        button3.backgroundColor = UIColor.cyanColor()
        button.text = "1/3"
        button.textAlignment = NSTextAlignment.Center
 
        addSubview(button3)
    }

    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 200, height: 30)
    }
    
    

}
