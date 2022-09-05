//
//  HomeControllerVC.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 13/07/22.
//

import UIKit
import SideMenu
import AVKit
import AVFoundation


class HomeControllerVC: UIViewController, MenuControllerDelegate {
    
    var player: AVPlayer!
    var playerLayer: AVPlayerLayer!
    private var sideMenu: SideMenuNavigationController?
    let mainView = HomeController()
    let pageController = TabVC()
    let videoController = VideoViewController()
    
    
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
        sideMenuCalls()
    }
    func sideMenuCalls(){
        title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image : UIImage(systemName: "line.horizontal.3"),
                                                           style: .done,
                                                           target: self,
                                                           action: #selector(menuBtnTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image : UIImage(systemName: "play.fill"),
                                                           style: .done,
                                                           target: self,
                                                           action: #selector(demoVideo))
        let menu = MenuController(with: ["Profile", "Home", "Food", "Mart", "Genie"])
        menu.delegate = self
        sideMenu = SideMenuNavigationController(rootViewController: menu)
        sideMenu?.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
        
    }
    @IBAction func menuBtnTapped(){
        present(sideMenu!, animated: true)
    }
    @IBAction func demoVideo(){
        self.navigationController?.pushViewController(videoController, animated: true)
        
    }
    func didSelectMenuItems(named: String) {
        sideMenu?.dismiss(animated: true, completion: { [weak self] in
            self?.title = named
            
            if named == "Profile"{
                let editVC = ProfileVC()
                self?.navigationController?.pushViewController(editVC, animated: true)
            }
            else if named == "Home"{
                let homeVC = HomeVC()
                self?.navigationController?.pushViewController(homeVC, animated: true)
            }
            else if named == "Food"{
                let foodVC = FoodVC()
                self?.navigationController?.pushViewController(foodVC, animated: true)
            }
            else if named == "Mart"{
                let martVC = MartVC()
                self?.navigationController?.pushViewController(martVC, animated: true)
            }
            else if named == "Genie"{
                let genieVC = GenieVC()
                self?.navigationController?.pushViewController(genieVC, animated: true)
            }
        })
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
            title = "Home"
            
        }else if tag == 101{
            
            pageController.goToFoodVC()
            title = "Food"
            
        }else if tag == 102{
            
            pageController.goToMartVC()
            title = "Mart"
            
        }else if tag == 103{
            
            pageController.goToGenieVC()
            title = "Genie"
            
        }
        
    }
    
    
}

