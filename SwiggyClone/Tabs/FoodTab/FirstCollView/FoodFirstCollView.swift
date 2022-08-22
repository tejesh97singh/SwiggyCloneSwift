//
//  FoodFirstCollView.swift
//  SwiggyClone
//
//  Created by Tejesh singh on 16/08/22.
//

import UIKit

class FoodFirstCollView: UICollectionViewCell {

    @IBOutlet weak var FoodImg: UIImageView!
    @IBOutlet weak var ImgView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        ImgView.layer.cornerRadius = 15
        FoodImg.layer.cornerRadius = 15
    
    }

}
