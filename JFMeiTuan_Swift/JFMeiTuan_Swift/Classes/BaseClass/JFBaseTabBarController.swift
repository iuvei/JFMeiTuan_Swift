//
//  JFBaseTabBarController.swift
//  JFMeiTuan_Swift
//
//  Created by linjianfang on 2017/8/29.
//  Copyright © 2017年 linjianfang. All rights reserved.
//

import UIKit

class JFBaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         initControllers()
    }
    
    func initControllers(){
        let homeVC   = JFHomeViewController();
        let OrderVC  = JFOrderViewController();
        let MeVC     = JFMeViewController();
        let NearVC   = JFNearViewController();
        let walkVC   = JFwalkViewController();
        
        homeVC.tabBarItem.image = UIImage.init(named: "");
        OrderVC.tabBarItem.image = UIImage.init(named: "");
        MeVC.tabBarItem.image = UIImage.init(named: "");
        NearVC.tabBarItem.image = UIImage.init(named: "");
        walkVC.tabBarItem.image = UIImage.init(named: "");
        
        
        homeVC.tabBarItem.title = "首页";
        OrderVC.tabBarItem.title = "订单";
        MeVC.tabBarItem.title = "我的";
        NearVC.tabBarItem.title = "附近";
        walkVC.tabBarItem.title = "逛一逛";
        
        let JFBaseHomeNav = JFBaseNacigationController.init(rootViewController: homeVC)
        let JFBaseNearNav = JFBaseNacigationController.init(rootViewController: NearVC)
        let JFBaseWalkNav = JFBaseNacigationController.init(rootViewController: walkVC)
        let JFBaseOrderNav = JFBaseNacigationController.init(rootViewController: OrderVC)
        let JFBaseMeNav = JFBaseNacigationController.init(rootViewController: MeVC)
        
//        let tabbarVC  = JFBaseTabBarController()
        self.viewControllers = [JFBaseHomeNav,JFBaseNearNav,JFBaseWalkNav,JFBaseOrderNav,JFBaseMeNav]
        self.tabBar.isTranslucent = false
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
