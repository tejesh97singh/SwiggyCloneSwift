//
//  ProfileVC.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 22/07/22.
//

import UIKit

class ProfileVC: UIViewController {
    var mainView = profileView()
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.profileVC = self
    }
    


}
