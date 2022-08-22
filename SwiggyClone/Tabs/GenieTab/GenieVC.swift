//
//  GenieVC.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 13/07/22.
//

import UIKit

class GenieVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    var genieView = GeniePageView()
    var arrGenieData = ["instamartimg1", "swiggy1", "swiggy2", "home1", "swiggyGenie"]
    
    override func loadView() {
        view = genieView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.genieView.offerCollectionView.delegate = self
        self.genieView.offerCollectionView.dataSource = self
        self.genieView.pickupDropCollectionView.delegate = self
        self.genieView.pickupDropCollectionView.dataSource = self
        setupUI()
        genieView.OneLabels.layer.masksToBounds = true
        genieView.OneLabels.layer.cornerRadius = 15
        genieView.PickupDropView.layer.masksToBounds = true
        genieView.PickupDropView.layer.cornerRadius = 10
    }
    
    override func viewDidAppear(_ animated: Bool) {
        initiateView()
    }
    func setupUI(){
        genieView.offerCollectionView.register(UINib(nibName: "GenieOfferCell", bundle: nil), forCellWithReuseIdentifier: "GenieOfferCell")
        genieView.pickupDropCollectionView.register(UINib(nibName: "pickupDropCell", bundle: nil), forCellWithReuseIdentifier: "pickupDropCell")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == genieView.pickupDropCollectionView){
            return ImageList.count
        }
        return arrGenieData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = genieView.offerCollectionView.dequeueReusableCell(withReuseIdentifier: "GenieOfferCell", for: indexPath) as! GenieOfferCell
        cell.GenieOfferImage.image = UIImage(named: arrGenieData[indexPath.row])
        if (collectionView == genieView.pickupDropCollectionView){
        let cellNew = genieView.pickupDropCollectionView.dequeueReusableCell(withReuseIdentifier: "pickupDropCell", for: indexPath) as! pickupDropCell
            cellNew.imageIcon.image = UIImage(named: ImageList[indexPath.row].imgName)
            cellNew.addImageData(with: ImageList[indexPath.row])
            return cellNew
        }
        return cell
    }
    func initiateView() {
            let customType = ActiveType.custom(pattern: "\\sBuy @75/month\\b")
            self.genieView.discountLabel.text = "Get 10% off on Geneie delivery fee & exclusive benefit across Swiggy Buy @75/month"
            self.genieView.discountLabel.enabledTypes.append(customType)
            self.genieView.discountLabel.customColor[customType] = UIColor.orange
            self.genieView.discountLabel.handleCustomTap(for: customType) { self.alert("Custom type", message: $0) }
        }

        func alert(_ title: String, message: String) {
            let vc = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            vc.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            present(vc, animated: true, completion: nil)
        }
    
    

}

