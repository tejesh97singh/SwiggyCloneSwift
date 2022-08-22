//
//  TabVC.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 13/07/22.
//

import UIKit

class TabVC: UIPageViewController {
    var firstTab = HomeVC()
    var secondTab = FoodVC()
    var thirdTab = MartVC()
    var fourthTab = GenieVC()
   
  
    fileprivate lazy var pages: [UIViewController] = {
        return [
            self.getViewController(index: "0"),
            self.getViewController(index: "1"),
            self.getViewController(index: "2"),
            self.getViewController(index: "3")
        ]
    }()
    
    fileprivate func getViewController(index : String) -> UIViewController{
        if (index == "0"){
            return firstTab
        }else if(index == "1"){
            return secondTab
        }else if(index == "2"){
            return thirdTab
        }else if(index == "3"){
            return fourthTab
        }else{
            return firstTab
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if let firstVC = pages.last{
            setViewControllers([firstVC], direction: .forward , animated: false, completion: nil)
        }
        for view in self.view.subviews {
            if let subView = view as? UIScrollView {
                subView.isScrollEnabled = false
            }
        }
    }

}

extension TabVC: UIPageViewControllerDataSource{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else { return nil }
        
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0          else { return pages.last }
        
        guard pages.count > previousIndex else { return nil        }
        
        return pages[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?{
        guard let viewControllerIndex = pages.firstIndex(of: viewController) else { return nil }
        let nextIndex = viewControllerIndex + 1
        guard nextIndex < pages.count else { return pages.first }
        guard pages.count > nextIndex else { return nil         }
        return pages[nextIndex]
    }
    
    func goToHomeVC(animated: Bool = false, completion: ((Bool) -> Void)? = nil) {
        setViewControllers([firstTab], direction: .forward, animated: animated, completion: completion)
    }
    func goToFoodVC(animated: Bool = false, completion: ((Bool) -> Void)? = nil) {
        setViewControllers([secondTab], direction: .forward, animated: animated, completion: completion)
    }
    func goToMartVC(animated: Bool = false, completion: ((Bool) -> Void)? = nil) {
        setViewControllers([thirdTab], direction: .forward, animated: animated, completion: completion)
    }
    func goToGenieVC(animated: Bool = false, completion: ((Bool) -> Void)? = nil) {
        setViewControllers([fourthTab], direction: .forward, animated: animated, completion: completion)
    }
    
    
}
