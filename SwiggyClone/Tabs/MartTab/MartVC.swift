//
//  MartVC.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 13/07/22.
//

import UIKit

class MartVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var arrCouponsData = ["instamartimg1", "swiggy1", "swiggy2", "home1"]
    var mainView = MartPageView()
    
    override func loadView() {
        view = mainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView.couponsCollectionView.delegate = self
        self.mainView.couponsCollectionView.dataSource = self
        self.mainView.itemsCollectionView.delegate = self
        self.mainView.itemsCollectionView.dataSource = self
        mainView.seeAllArrow.layer.masksToBounds = true
        mainView.seeAllArrow.layer.cornerRadius = 10
        mainView.timeLbl.layer.masksToBounds = true
        mainView.timeLbl.layer.cornerRadius = 7
        setupUI()
    }
    override func viewDidAppear(_ animated: Bool) {
        initiateMartView()
    }
    func setupUI(){
        mainView.couponsCollectionView.register(UINib(nibName: "couponsPageCell", bundle: nil), forCellWithReuseIdentifier: "couponsPageCell")

        mainView.itemsCollectionView.register(UINib(nibName: "boughPageItems", bundle: nil), forCellWithReuseIdentifier: "boughPageItems")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == mainView.itemsCollectionView){
            print(coupon.count)
            return coupon.count
        }
        return arrCouponsData.count
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = mainView.couponsCollectionView.dequeueReusableCell(withReuseIdentifier: "couponsPageCell", for: indexPath) as! couponsPageCell
        cell.couponImg.image = UIImage(named: arrCouponsData[indexPath.row])
        if (collectionView == mainView.itemsCollectionView){
        let cellNew = mainView.itemsCollectionView.dequeueReusableCell(withReuseIdentifier: "boughPageItems", for: indexPath) as! boughPageItems
            cellNew.imgView.image = UIImage(named: coupon[indexPath.row].imgName)
            cellNew.addvalues(with: coupon[indexPath.row])
            return cellNew
        }
        return cell
    }
    func initiateMartView() {
        let customType = ActiveType.custom(pattern: "\\sBuy @75/month\\b")
        self.mainView.extraDiscountLabel.text = "Get 10% off on Geneie delivery fee & exclusive benefit across Swiggy Buy @75/month"
        self.mainView.extraDiscountLabel.enabledTypes.append(customType)
        self.mainView.extraDiscountLabel.customColor[customType] = UIColor.orange
        self.mainView.extraDiscountLabel.handleCustomTap(for: customType) { self.alert("Custom type", message: $0) }
        }

        func alert(_ title: String, message: String) {
            let vc = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            vc.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            present(vc, animated: true, completion: nil)
        }
    

}
