//
//  JFBaseViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjianfang on 2017/8/29.
//  Copyright © 2017年 linjianfang. All rights reserved.
//

import UIKit

class JFBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            /// 自定义导航栏返回按钮
            let backButton = UIButton(type: .custom)
            backButton.setImage(UIImage.init(named: "beauty_icon_back"), for: .normal)
            //        backButton.titleLabel?.font = UIFont.systemFont(ofSize: 15)
            backButton.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
            
            //        let spacing:CGFloat = 10; // the amount of spacing to appear between image and title
            //        backButton.imageEdgeInsets = UIEdgeInsetsMake(0, spacing, 0, 0);
            //        backButton.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, spacing);
            
            backButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
            let item = UIBarButtonItem.init(customView: backButton)
            self.navigationItem.backBarButtonItem = item;        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        if (navigationController?.viewControllers.count)! >= 2 {
//            self.hidesBottomBarWhenPushed = true
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /// 基类里面定制右边的按钮
    ///
    /// - Parameters:
    ///   - image: 图片
    ///   - target: 哪个监听泽
    ///   - action: 方法
    func setupCustomRightWithImage(image:UIImage,target:Any,action:Selector){
        let button:UIButton = UIButton.init(type: UIButtonType.custom)
        button.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        button.imageEdgeInsets = UIEdgeInsetsMake(10, 20, 10, 0)
        button.setImage(image, for: UIControlState.normal)        
        button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        let rightItem:UIBarButtonItem =  UIBarButtonItem.init(customView: button)
        navigationItem.rightBarButtonItem = rightItem
    }
    
    func setupCustomRightWithTitle(title:NSString,target:Any,action:Selector){
        let button:UIButton = UIButton.init(type: UIButtonType.custom)
        button.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        button.setTitle(title as String, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        let rightItem:UIBarButtonItem =  UIBarButtonItem.init(customView: button)
        navigationItem.rightBarButtonItem = rightItem
    }
    
    
    func setupCustomLeftWithTitle(title:NSString,target:Any,action:Selector){
        let button:UIButton = UIButton.init(type: UIButtonType.custom)
        button.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        button.setTitle(title as String, for: UIControlState.normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        let leftItem:UIBarButtonItem =  UIBarButtonItem.init(customView: button)
        navigationItem.leftBarButtonItem = leftItem
    }
    
    func setupCustomLeftWithImage(image:UIImage,target:Any,action:Selector){
        let button:UIButton = UIButton.init(type: UIButtonType.custom)
        button.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        button.imageEdgeInsets = UIEdgeInsetsMake(10, 20, 10, 0)
        button.setImage(image, for: UIControlState.normal)
        button.addTarget(target, action: action, for: UIControlEvents.touchUpInside)
        let leftItem:UIBarButtonItem =  UIBarButtonItem.init(customView: button)
        navigationItem.leftBarButtonItem = leftItem
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
