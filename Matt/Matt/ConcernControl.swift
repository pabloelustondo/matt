//
//  ConcernControl.swift
//  Matt
//
//  Created by Pablo Elustondo on 2016-09-30.
//  Copyright © 2016 Pablo Elustondo. All rights reserved.
//

import UIKit

class ConcernControl: UIView{

    // MARK: Properties
    
    var concernPoints:Int = 1
    var subConcernConcerningPoints:Int = 2
    var subConcentTotalPoints = 3
    
    // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let rightBorder = self.frame.width
        let boxWidth = 30
        let middleBoxStart = (rightBorder - CGFloat(boxWidth))/2
     
        //Images
        let whiteStarImage = UIImage(named: "white-star")
        
        //Day achivement / comitment
        let button = UILabel(frame: CGRect(x: 0, y: 0, width: boxWidth, height: boxWidth))
        button.backgroundColor = UIColor.yellowColor()
        button.text = String(concernPoints)
        button.textAlignment = NSTextAlignment.Center
        button.userInteractionEnabled = true;
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ConcernControl.dayButtonTapped(_:)))
        button.addGestureRecognizer(tapGesture)
        
        addSubview(button)
        
        
        //General Status
        let button2 = UIButton(frame: CGRect(x: Int(middleBoxStart), y: 0, width: boxWidth, height: boxWidth))
        button2.backgroundColor = UIColor.greenColor()
        button2.setImage(whiteStarImage, forState: .Normal)
        addSubview(button2)
        
        
        //SubConcerns
        let button3 = UILabel(frame: CGRect(x: Int(rightBorder) - boxWidth, y: 0, width: boxWidth, height: boxWidth))
        button3.backgroundColor = UIColor.cyanColor()
        button3.text = String(subConcernConcerningPoints) + "/" + String(subConcentTotalPoints)
        button3.textAlignment = NSTextAlignment.Center
 
        addSubview(button3)
    }
    
    func dayButtonTapped(button: UILabel) {
        print("Button pressed 👍")
    }

    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 200, height: 30)
    }
    
    

}
