//
//  JFSearchController.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/14.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import Foundation
import UIKit

extension JFHomeViewController{
    
    func initNav() {
        let controller = UISearchController(searchResultsController: nil)
        //        controller.searchResultsUpdater = self   //两个样例使用不同的代理
        controller.hidesNavigationBarDuringPresentation = false
        controller.dimsBackgroundDuringPresentation = false
        controller.searchBar.searchBarStyle = .minimal
        controller.searchBar.sizeToFit()
        navigationItem.titleView = controller.searchBar
        
        self.setupCustomLeftWithTitle(title: "上海", target: self, action:#selector(leftClick))
        
        self.setupCustomRightWithImage(image: UIImage.init(named: "baby_pintuan_close")!, target: self, action: #selector(rightClick))
    }
    
    func leftClick() {
        
    }
    
    func rightClick() {
        
    }
   
}
