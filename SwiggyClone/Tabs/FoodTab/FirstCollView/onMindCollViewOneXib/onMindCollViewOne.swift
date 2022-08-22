//
//  onMindCollViewOne.swift
//  SwiggyClone
//
//  Created by Tejesh singh on 16/08/22.
//

import UIKit

class onMindCollViewOne: UICollectionViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblImgName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        //lblImgName.lineBreakMode = .byWordWrapping
        lblImgName.numberOfLines = 0
        imgView.layer.cornerRadius = 30
    }
    func addValues(with CouponInfo: ImgLblList){
        lblImgName.text = CouponInfo.lblName
    }

}
