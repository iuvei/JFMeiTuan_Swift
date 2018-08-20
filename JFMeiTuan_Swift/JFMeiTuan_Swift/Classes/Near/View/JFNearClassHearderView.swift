
//
//  JFNearClassHearderView.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/20.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFNearClassHearderView: UITableViewHeaderFooterView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    class func headViewWithTableView(_ tableView:UITableView) -> JFNearClassHearderView {
        
        let nearClassHearderViewID:NSString = "nearClassHearderViewID"
        
        var nearClassHearderView = tableView.dequeueReusableHeaderFooterView(withIdentifier: nearClassHearderViewID as String)

        
        if nearClassHearderView == nil {
            
            nearClassHearderView = Bundle.main.loadNibNamed("JFNearClassHearderView", owner: nil, options: nil)?.last as? JFNearClassHearderView
        }
        return nearClassHearderView as! JFNearClassHearderView
    }
    

}
