//
//  CustomTableViewCell.swift
//  Hello
//
//  Created by admin on 21/8/2561 BE.
//  Copyright © 2561 admin. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imgAvartar: UIImageView!
    @IBOutlet weak var lblTask: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imgAvartar.image = UIImage(named: "clock")
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
