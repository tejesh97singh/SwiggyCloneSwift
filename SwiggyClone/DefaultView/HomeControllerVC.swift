//
//  HomeControllerVC.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 13/07/22.
//

import UIKit

class HomeControllerVC: UIViewController {

    var mainView = HomeController()
    var pageController = TabVC()
    
    override func loadView() {
        view = mainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpPageView()
        addChild(pageController)
        pageController.view.translatesAutoresizingMaskIntoConstraints = false
        mainView.TopContainer.addSubview(pageController.view)
        NSLayoutConstraint.activate([
            pageController.view.leadingAnchor.constraint(equalTo: mainView.TopContainer.leadingAnchor, constant: 0),
            pageController.view.trailingAnchor.constraint(equalTo: mainView.TopContainer.trailingAnchor, constant: 0),
            pageController.view.topAnchor.constraint(equalTo: mainView.TopContainer.topAnchor, constant: 0),
            pageController.view.bottomAnchor.constraint(equalTo: mainView.TopContainer.bottomAnchor, constant: 0)])
            pageController.didMove(toParent: self)
    }
    func setUpPageView(){
        mainView.homeBtn.addTarget(self, action: #selector(onTabClick), for: .touchUpInside)
        mainView.foodBtn.addTarget(self, action: #selector(onTabClick), for: .touchUpInside)
        mainView.martBtn.addTarget(self, action: #selector(onTabClick), for: .touchUpInside)
        mainView.genieBtn.addTarget(self, action: #selector(onTabClick), for: .touchUpInside)
        onClickSelectTab(tag: 100)
    }
    @IBAction func onTabClick(_ sender: UIButton) {
        print("onclick tab selected" , sender.tag)
        self.onClickSelectTab(tag: sender.tag)
    }
    func onClickSelectTab(tag:Int){
       
        if tag == 100{
           
            pageController.goToHomeVC()
            
        }else if tag == 101{
            
            pageController.goToFoodVC()
            
        }else if tag == 102{
            
            pageController.goToMartVC()
            
        }else if tag == 103{
           
                pageController.goToGenieVC()
           
        }
        
    }

}

