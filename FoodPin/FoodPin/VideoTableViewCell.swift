//
//  VideoTableViewCell.swift
//  FoodPin
//
//  Created by stud on 28/01/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

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
