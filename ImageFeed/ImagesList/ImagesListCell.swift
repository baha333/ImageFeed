//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by Bakhadir on 26.11.2023.
//

import UIKit

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
    
    func configCell(image: UIImage, data: String, isLiked: Bool) {
        
        cellImage?.image = image
        backgroundColor = UIColor(named: "YP Black")
        dateLabel.text = Date().dateTimeString
        let likeImage = isLiked ? UIImage(named: "like_button_on") : UIImage(named: "like_button_off")
        likeButton.setImage(likeImage, for: .normal)
    }
}
