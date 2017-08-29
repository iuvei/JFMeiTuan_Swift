//
//  AppDelegate.swift
//  JFMeiTuan_Swift
//
//  Created by linjianfang on 2017/8/24.
//  Copyright © 2017年 linjianfang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
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
        
        

        
        
        let tabbarVC  = JFBaseTabBarController()
        tabbarVC.viewControllers = [JFBaseHomeNav,JFBaseNearNav,JFBaseWalkNav,JFBaseOrderNav,JFBaseMeNav]
        self.window?.rootViewController = tabbarVC
        self.window?.backgroundColor = UIColor.white
        


        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

