//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by Bakhadir on 26.11.2023.
//

import Foundation
import UIKit

protocol ImagesListCellDelegate: AnyObject {
    func imageListCellDidTapLike(_ cell: ImagesListCell)
}

public final class ImagesListCell: UITableViewCell {
    // MARK: - IB Outlets
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet var dateLabel: UILabel!
    
    // MARK: - Public Properties
    static let reuseIdentifier = "ImagesListCell"
    weak var delegate: ImagesListCellDelegate?
    
    public override func prepareForReuse() {
        super.prepareForReuse()
        cellImage.kf.cancelDownloadTask()
    }
    
    @IBAction func likeButtonClicked(_ sender: Any) {
        delegate?.imageListCellDidTapLike(self)
    }

    func setIsLiked(isLikeButton: Bool) {
        let likeImage = isLikeButton ? UIImage(named: "LikeActive") : UIImage(named: "LikeNoActive")
        likeButton.setImage(likeImage, for: .normal)
    }
}
