//
//  BaseViewController.swift
//  SharedEelementDemo
//
//  Created by Nishee S on 02/12/21.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setNavigationBarInViewController (controller : UIViewController,naviColor : UIColor, naviTitle : String, isTranslucent : Bool)
    {
        UIApplication.shared.statusBarStyle = .lightContent
        controller.navigationController?.isNavigationBarHidden = false
        controller.navigationController?.navigationBar.isOpaque = false;
        
        controller.navigationController?.navigationBar.isTranslucent = isTranslucent
        
        controller.navigationController?.navigationBar.barTintColor = naviColor;
        controller.navigationController?.navigationBar.tintColor = .white;
        
        let label = UILabel()
        label.text = naviTitle.capitalized
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        controller.navigationItem.titleView = label
       
        controller.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        controller.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func setStatusBar() {
        let tag = 12321
        if let taggedView = self.view.viewWithTag(tag){
            taggedView.removeFromSuperview()
        }
        let overView = UIView()
        overView.frame = UIApplication.shared.statusBarFrame
        overView.backgroundColor = UIColor(red: 55/255, green: 0/255, blue: 179/255, alpha: 1)
        overView.tag = tag
        self.view.addSubview(overView)
    }

}
