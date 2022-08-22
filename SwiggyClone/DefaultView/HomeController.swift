//
//  HomeController.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 12/07/22.
//

import UIKit

class HomeController: UIView {
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var TopContainer: UIView!

    @IBOutlet weak var homeBtn: UIButton!
    @IBOutlet weak var foodBtn: UIButton!
    @IBOutlet weak var martBtn: UIButton!
    @IBOutlet weak var genieBtn: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }
    
    func initView(){
        Bundle.main.loadNibNamed("HomeController", owner: self, options: nil)
        addSubview(containerView)
        containerView.frame = self.bounds
        containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }


   

}
