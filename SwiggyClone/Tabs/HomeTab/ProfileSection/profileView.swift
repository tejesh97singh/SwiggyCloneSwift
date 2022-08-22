//
//  profileView.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 22/07/22.
//

import UIKit

class profileView: UIView {

    @IBOutlet var profileContainer: UIView!
    var profileVC : ProfileVC!
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }
    
    func initView(){
        Bundle.main.loadNibNamed("profileView", owner: self, options: nil)
        addSubview(profileContainer)
        profileContainer.frame = self.bounds
        profileContainer.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }

    @IBAction func onClickEdit(_ sender: Any) {
        let editVC = EditVC()
        profileVC.navigationController?.pushViewController(editVC, animated: true)
        print("edit butoon pressed")
    }
}
