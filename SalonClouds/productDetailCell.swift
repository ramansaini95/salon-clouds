//
//  productDetailCell.swift
//  SalonClouds
//
//  Created by Guri Saini on 23/05/22.
//

import UIKit

class productDetailCell: UITableViewCell {
    @IBOutlet var Title:UILabel!
    @IBOutlet var descriptionData:UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
