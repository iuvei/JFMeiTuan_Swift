//
//  JFBaseNacigationController.swift
//  JFMeiTuan_Swift
//
//  Created by linjianfang on 2017/8/29.
//  Copyright © 2017年 linjianfang. All rights reserved.
//

import UIKit

class JFBaseNacigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 1.设置导航栏标题属性：设置标题颜色
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        // 2.设置导航栏前景色：设置item指示色
       navigationBar.tintColor = UIColor.white
        
        // 3.设置导航栏半透明
        navigationBar.isTranslucent = false
        
        // 4.设置导航栏背景图片
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        
        // 5.设置导航栏阴影图片
//        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        //设置导航栏的背景色
        navigationBar.barTintColor = JFStyle.navigarionBarColor()
        
        //去除导航栏的下划线
        navigationBar.shadowImage = UIImage.init()
        
        //设置状态栏的颜色
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent;
        
//        UIImage *backImage = [UIImage imageNamed:@"backNor"];
//        [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[backImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, backImage.size.width, 0, 0)]
//            forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
//        [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(-233, 0) forBarMetrics:UIBarMetricsDefault];
        
//        let backImage:UIImage = UIImage.init(named: "")!
        
        
        
        
        


        
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
