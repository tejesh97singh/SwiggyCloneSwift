//
//  OfferPageCell.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 14/07/22.
//

import UIKit

class OfferPageCell: UICollectionViewCell {
    @IBOutlet weak var cellViewContainer: UIView!
    @IBOutlet weak var cellImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellImage.layer.cornerRadius = 20
    }

}
