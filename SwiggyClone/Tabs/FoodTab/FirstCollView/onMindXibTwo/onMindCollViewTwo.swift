//
//  onMindCollViewTwo.swift
//  SwiggyClone
//
//  Created by Tejesh singh on 18/08/22.
//

import UIKit

class onMindCollViewTwo: UICollectionViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblImgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateValues(with TagDetails : ShortTags ){
        lblName.text = TagDetails.lblName
    }

}
