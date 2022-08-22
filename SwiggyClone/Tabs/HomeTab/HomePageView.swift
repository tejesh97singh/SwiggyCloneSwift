//
//  HomePageView.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 13/07/22.
//

import UIKit

class HomePageView: UIView {

    
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var offerRecommendCollectionView: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var showRestaurantsCollectionView: UICollectionView!
    var homeVC : HomeVC!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }
    
    func initView(){
        Bundle.main.loadNibNamed("HomePageView", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }
    
    @IBAction func onClickProfile(_ sender: Any) {
        let profileVC = ProfileVC()
        homeVC.navigationController?.pushViewController(profileVC, animated: true)
    }
    
}
