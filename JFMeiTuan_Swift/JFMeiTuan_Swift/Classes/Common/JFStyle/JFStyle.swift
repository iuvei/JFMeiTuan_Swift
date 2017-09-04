//
//  JFStyle.swift
//  JFMeiTuan_Swift
//
//  Created by linjianfang on 2017/9/4.
//  Copyright © 2017年 linjianfang. All rights reserved.
//

import UIKit

class JFStyle: NSObject {
    
    class func JFInitColor (red:CGFloat,green:CGFloat,blue:CGFloat) -> UIColor  {
       return UIColor.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1)

    }
    
    //导航栏的背景色
    class func navigarionBarColor() ->UIColor {
        return self.JFInitColor(red: 86.0, green: 190.0, blue: 173.0)
    }
    
    //透明色
    class func clearColor() ->UIColor {
        return UIColor.clear
    }
}
