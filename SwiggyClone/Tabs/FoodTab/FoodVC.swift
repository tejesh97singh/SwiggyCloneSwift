//
//  FoodVC.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 13/07/22.
//

import UIKit

class FoodVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    
    var foodMainView = FoodPageView()
    var arrFirstCollView = ["swiggyFood1","home1","swiggy1","swiggy2","instamartimg1"]
    var arrOnMindCollcetionTwo = ["","","","",""]
    var arrOnMindCollcetionOne = ["","","","",""]
    override func loadView() {
        view = foodMainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.foodMainView.firstCollectionView.delegate =  self
        self.foodMainView.firstCollectionView.dataSource = self
        self.foodMainView.onMindCollViewOne.delegate =  self
        self.foodMainView.onMindCollViewOne.dataSource = self
        self.foodMainView.onMindCollViewTwo.delegate =  self
        self.foodMainView.onMindCollViewTwo.dataSource = self
        self.foodMainView.exploreCollView.delegate =  self
        self.foodMainView.exploreCollView.dataSource = self
        setupUI()
    }
    override func viewWillLayoutSubviews() {
        self.foodMainView.exploreCollHeight?.constant = self.foodMainView.exploreCollView.contentSize.height
        
    }
    private func reloadData() {
        self.foodMainView.exploreCollView.reloadData()
        self.foodMainView.exploreCollView.invalidateIntrinsicContentSize()
        
    }
    
    func setupUI(){
        foodMainView.firstCollectionView.register(UINib(nibName: "FoodFirstCollView", bundle: nil), forCellWithReuseIdentifier: "FoodFirstCell")
        foodMainView.onMindCollViewOne.register(UINib(nibName: "onMindCollViewOne", bundle: nil), forCellWithReuseIdentifier: "onMindFirstCell")
        foodMainView.onMindCollViewTwo.register(UINib(nibName: "onMindCollViewTwo", bundle: nil), forCellWithReuseIdentifier: "onMindCellTwo")
        foodMainView.exploreCollView.register(UINib(nibName: "restaurantCollViewCell", bundle: nil), forCellWithReuseIdentifier: "restaurantCell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (collectionView == foodMainView.onMindCollViewTwo){
            return 5
        }
        else if (collectionView == foodMainView.onMindCollViewOne){
            return 5
        }
        else if (collectionView ==  foodMainView.exploreCollView){
            return 100
        }
        
        return arrFirstCollView.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = foodMainView.firstCollectionView.dequeueReusableCell(withReuseIdentifier: "FoodFirstCell", for: indexPath) as! FoodFirstCollView
                
        if (collectionView == foodMainView.onMindCollViewOne){
            let cellOne = foodMainView.onMindCollViewOne.dequeueReusableCell(withReuseIdentifier: "onMindFirstCell", for: indexPath) as! onMindCollViewOne
            cellOne.imgView.image = UIImage(named: CouponInfo[indexPath.row].ImgViewName)
            cellOne.addValues(with: CouponInfo[indexPath.row])
            return cellOne
        }
        else if (collectionView == foodMainView.onMindCollViewTwo){
            let cellTwo = foodMainView.onMindCollViewTwo.dequeueReusableCell(withReuseIdentifier: "onMindCellTwo", for: indexPath) as! onMindCollViewTwo
            cellTwo.lblImgView.image = UIImage(named: TagDetails[indexPath.row].lblImage)
            cellTwo.updateValues(with: TagDetails[indexPath.row])
            return cellTwo
        }
        else if (collectionView == foodMainView.exploreCollView){
            let cellExplore = foodMainView.exploreCollView.dequeueReusableCell(withReuseIdentifier: "restaurantCell", for: indexPath) as! restaurantCollViewCell
//            cellExplore.lblImgView.image = UIImage(named: TagDetails[indexPath.row].lblImage)
//            cellExplore.updateValues(with: TagDetails[indexPath.row])
            return cellExplore
        }
        cell.FoodImg.image = UIImage(named: arrFirstCollView[indexPath.row])
        return cell
    }

}
