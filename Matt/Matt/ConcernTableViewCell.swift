//
//  ConcernTableViewCell.swift
//  Matt
//
//  Created by Pablo Elustondo on 2016-10-06.
//  Copyright © 2016 Pablo Elustondo. All rights reserved.
//

import UIKit

class ConcernTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK Properties
    
    @IBOutlet weak var ConcernName: UILabel!
    
    @IBOutlet weak var ConcernStatus: ConcernControl!

    @IBOutlet weak var ConcernImage: UIImageView!
}
