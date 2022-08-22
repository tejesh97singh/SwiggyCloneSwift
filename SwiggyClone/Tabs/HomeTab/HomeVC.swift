//
//  HomeVC.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 12/07/22.
//

import UIKit


class HomeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var mainView = HomePageView()
    var arrOfferData = ["offer1", "offer2", "offer3", "offer4", "offer5"]
    var arrRestaurantData = ["image1", "image2", "image3", "image4", "image5"]
    
    override func loadView() {
        view = mainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainView.offerRecommendCollectionView.delegate = self
        self.mainView.offerRecommendCollectionView.dataSource = self
        self.mainView.showRestaurantsCollectionView.delegate = self
        self.mainView.showRestaurantsCollectionView.dataSource = self
        setupUI()
        mainView.homeVC = self
    }
    func setupUI(){
        mainView.offerRecommendCollectionView.register(UINib(nibName: "OfferPageCell", bundle: nil), forCellWithReuseIdentifier: "OfferPageCell")
        mainView.showRestaurantsCollectionView.register(UINib(nibName: "restaurantSectionCell", bundle: nil), forCellWithReuseIdentifier: "restaurantSectionCell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == mainView.showRestaurantsCollectionView){
            return arrRestaurantData.count
        }
        return arrOfferData.count
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = mainView.offerRecommendCollectionView.dequeueReusableCell(withReuseIdentifier: "OfferPageCell", for: indexPath) as! OfferPageCell
        if (collectionView == mainView.showRestaurantsCollectionView){
        let cellNew = mainView.showRestaurantsCollectionView.dequeueReusableCell(withReuseIdentifier: "restaurantSectionCell", for: indexPath) as! restaurantSectionCell
            return cellNew
        }
        return cell
        
    }
       
}
