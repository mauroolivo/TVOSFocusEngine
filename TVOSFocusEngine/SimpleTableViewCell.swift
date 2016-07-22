//
//  SimpleTableViewCell.swift
//  TVOSFocusEngine
//
//  Created by Mauro Olivo on 22/07/16.
//  Copyright © 2016 Mauro Olivo. All rights reserved.
//

import UIKit

class SimpleTableViewCell: UITableViewCell {

    @IBOutlet weak var cellLablel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
