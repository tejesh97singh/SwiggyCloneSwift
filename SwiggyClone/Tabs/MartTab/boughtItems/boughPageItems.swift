//
//  boughPageItems.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 19/07/22.
//

import UIKit

class boughPageItems: UICollectionViewCell {
    @IBOutlet weak var lblNames: UILabel!
    @IBOutlet weak var lblWeights: UILabel!
    @IBOutlet weak var lblPrices: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func addvalues(with coupon: boughVC) {
        lblNames.text = coupon.lblName
        lblWeights.text = coupon.lblWeight
        lblPrices.text = coupon.lblPrice
    }

    
}
