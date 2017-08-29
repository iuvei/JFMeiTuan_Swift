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

    
        let JFBaseHomeNav = JFBaseNacigationController.init(rootViewController: JFHomeViewController())
        let JFBaseNearNav = JFBaseNacigationController.init(rootViewController: JFNearViewController())
        let JFBaseWalkNav = JFBaseNacigationController.init(rootViewController: JFwalkViewController())
        let JFBaseOrderNav = JFBaseNacigationController.init(rootViewController: JFOrderViewController())
        let JFBaseMeNav = JFBaseNacigationController.init(rootViewController: JFMeViewController())
        
        self.viewControllers = [JFBaseHomeNav,JFBaseNearNav,JFBaseWalkNav,JFBaseOrderNav,JFBaseMeNav]
        self.selectedViewController = JFBaseMeNav
        self.tabBar.isTranslucent = false//tabbar不透明
        
        let tabbarItem0 = self.tabBar.items?[0]
        tabbarItem0?.image = UIImage.init(named: "")
        tabbarItem0?.selectedImage = UIImage.init(named: "")
        tabbarItem0?.title = "首页";
        tabbarItem0?.titlePositionAdjustment = UIOffsetMake(0,-4)
        
        let tabbarItem1 = self.tabBar.items?[1]
        tabbarItem1?.image = UIImage.init(named: "")
        tabbarItem1?.selectedImage = UIImage.init(named: "")
        tabbarItem1?.title = "附近";
        tabbarItem1?.titlePositionAdjustment = UIOffsetMake(0,-4)
        
        let tabbarItem2 = self.tabBar.items?[2]
        tabbarItem2?.image = UIImage.init(named: "")
        tabbarItem2?.selectedImage = UIImage.init(named: "")
        tabbarItem2?.title = "逛一逛";
        tabbarItem2?.titlePositionAdjustment = UIOffsetMake(0,-4)
        
        let tabbarItem3 = self.tabBar.items?[3]
        tabbarItem3?.image = UIImage.init(named: "")
        tabbarItem3?.selectedImage = UIImage.init(named: "")
        tabbarItem3?.title = "订单";
        tabbarItem3?.titlePositionAdjustment = UIOffsetMake(0,-4)
        
        let tabbarItem4 = self.tabBar.items?[4]
        tabbarItem4?.image = UIImage.init(named: "")
        tabbarItem4?.selectedImage = UIImage.init(named: "")
        tabbarItem4?.title = "我的";
        tabbarItem4?.titlePositionAdjustment = UIOffsetMake(0,-4)
        
        
        //选中个非选中的字体颜色
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.gray], for:.normal)
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.blue], for: .selected)
        
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
