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
        return self.JFInitColor(red: 29.0, green: 171.0, blue: 177.0)
    }
    
    //下划线的背景色
    class func lineColor() ->UIColor {
        return UIColor.init(white: 0, alpha: 0.1)
    }
    
    //透明色
    class func clearColor() ->UIColor {
        return UIColor.clear
    }
    
    //屏幕的宽度
    class func screenWidth() ->CGFloat {
        return UIScreen.main.bounds.size.width
    }
    //屏幕的高度
    class func screenHeight() ->CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    
    
}
