//
//  MartPageView.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 13/07/22.
//

import UIKit

class MartPageView: UIView {

    @IBOutlet weak var itemsCollectionView: UICollectionView!
    @IBOutlet weak var couponsCollectionView: UICollectionView!
    
    @IBOutlet weak var extraDiscountLabel: ActiveLabel!
    @IBOutlet var mainContainerView: UIView!

    @IBOutlet weak var seeAllArrow: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var timeLbl: UILabel!
    
    override func awakeFromNib() {
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }
    
    func initView(){
        Bundle.main.loadNibNamed("MartPageView", owner: self, options: nil)
        addSubview(mainContainerView)
        mainContainerView.frame = self.bounds
        mainContainerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }

}
