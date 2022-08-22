//
//  pickupDropCell.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 20/07/22.
//

import UIKit

class pickupDropCell: UICollectionViewCell {

    @IBOutlet weak var lblPickupName: UILabel!
   
    @IBOutlet weak var pickupMainContainer: UIView!
    @IBOutlet weak var imageIcon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        //imageIcon.layer.cornerRadius = 10
    }
    func addImageData(with ImageList:pickupDropImageList){
        lblPickupName.text = ImageList.lblName
        
    }

}
