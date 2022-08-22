//
//  restaurantSectionCell.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 17/07/22.
//

import UIKit

class restaurantSectionCell: UICollectionViewCell {

    @IBOutlet weak var mainViewContainer: UIView!
    @IBOutlet weak var star: UIImageView!
    @IBOutlet weak var cellImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        star.layer.cornerRadius = 15
        cellImageView.layer.cornerRadius = 15
    }

}
