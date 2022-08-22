//
//  GenieOfferCell.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 20/07/22.
//

import UIKit

class GenieOfferCell: UICollectionViewCell {

    @IBOutlet weak var mainContainerView: UIView!
    
    @IBOutlet weak var GenieOfferImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        GenieOfferImage.layer.cornerRadius = 10
    }

}
