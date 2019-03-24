//
//  RestaurantTableViewCell.swift
//  FoodPin
//
//  Created by stud on 17/12/2018.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
        
//        didSet {
//            thumbnailImageView.layer.cornerRadius = thumbnailImageView.bounds.width / 2
//            thumbnailImageView.clipsToBounds = true
//        }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
