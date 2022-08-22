//
//  FoodPageView.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 13/07/22.
//

import UIKit

class FoodPageView: UIView {

    @IBOutlet var containerView: UIView!
    
    @IBOutlet weak var firstCollectionView: UICollectionView!
    @IBOutlet weak var onMindCollViewOne: UICollectionView!
    @IBOutlet weak var onMindCollViewTwo: UICollectionView!
    @IBOutlet weak var exploreCollView: UICollectionView!
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
        Bundle.main.loadNibNamed("FoodPageView", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }


   

}
