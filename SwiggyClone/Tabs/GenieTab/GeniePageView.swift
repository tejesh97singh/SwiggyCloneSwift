//
//  GeniePageView.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 13/07/22.
//

import UIKit

class GeniePageView: UIView{
    
    @IBOutlet weak var genieMainContainer: UIView!
    @IBOutlet weak var offerCollectionView: UICollectionView!
    @IBOutlet weak var OneLabels: UIView!
    @IBOutlet weak var discountLabel: ActiveLabel!
    @IBOutlet weak var pickupDropCollectionView: UICollectionView!
    
    @IBOutlet weak var PickupDropView: UIView!
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
        Bundle.main.loadNibNamed("GeniePageView", owner: self, options: nil)
        addSubview(genieMainContainer)
        genieMainContainer.frame = self.bounds
        genieMainContainer.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }



}
