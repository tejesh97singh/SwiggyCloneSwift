//
//  EditVC.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 24/07/22.
//

import UIKit

class EditVC: UIViewController {
    var editMainView = EditPageView()
    
    override func loadView() {
        view = editMainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        editMainView.nameTxtField.isEnabled = false
        editMainView.phoneTxtfield.isEnabled = false
        editMainView.emailTxtField.isEnabled = false
        editMainView.nameUpdateCancelstck.isHidden = true
        editMainView.phoneUpdateEditStck.isHidden = true
        editMainView.emailUpdateEditStck.isHidden = true
    }
    

}
