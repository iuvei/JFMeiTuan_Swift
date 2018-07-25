//
//  JFMacroConst.swift
//  JFMeiTuan_Swift
//
//  Created by linJF on 2018/7/25.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import Foundation
import UIKit

let JF_SCREEN_HEIGHT         = UIScreen.main.bounds.height
let JF_SCREEN_WIDTH          = UIScreen.main.bounds.width
let JF_KeyWindow             = UIApplication.shared.keyWindow
let JF_Application           = UIApplication.shared
let JF_AppDelegate           = UIApplication.shared.delegate
let JF_UserDefaults          = UserDefaults.standard
let JF_NotificationCenter    = NotificationCenter.default


/* 设备系统相关  */
let kiOSVersion:String       = UIDevice.current.systemVersion     /* iOS系统版本 */


/* app版本  以及设备系统版本 */
let infoDictionary             = Bundle.main.infoDictionary
let JF_AppName: String?         = infoDictionary!["CFBundleDisplayName"] as? String        /* App名称 */
let JF_AppVersion: String?      = infoDictionary!["CFBundleShortVersionString"] as? String /* App版本号 */
let JF_AppBuildVersion: String? = infoDictionary!["CFBundleVersion"] as? String            /* Appbuild版本号 */
let JF_AppBundleId: String?     = infoDictionary!["CFBundleIdentifier"] as? String                 /* app bundleId */
let JF_latformName: String?     = infoDictionary!["DTPlatformName"] as? String  //平台名称（iphonesimulator 、 iphone）


/// Cache缓存文件夹
let cacheDir = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).last

/// Documents文件夹
let documentsDir = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).first


//获取本地存储数据
func get_userDefaults(key : String)->AnyObject?{
    var saveStr : AnyObject! = JF_UserDefaults.object(forKey: key) as AnyObject
    saveStr = (saveStr == nil) ? "" as AnyObject : saveStr
    return saveStr
}
//存储数据
func save_userDefaults(key : String,value:AnyObject?){
    JF_UserDefaults.set(value!, forKey: key)
}

//字符串转数组
func stringToArray(str:String)->NSArray{
    var dataArray:[String] = []
    for items in str{
        dataArray.append("\(items)")
    }
    return dataArray as NSArray
}

//读取本地图片 （文件名，后缀名）
func JF_loadImage(imageName __imgName__:String,imgExtension __imgExt__:String) -> UIImage {
    return UIImage.init(contentsOfFile: Bundle.main.path(forResource: __imgName__, ofType: __imgExt__)!)!
}

//定义UIImage对象 （文件名）  png格式

func JF_loadPNGImage(imageName __imgName__:String) -> UIImage {
    return UIImage.init(contentsOfFile: Bundle.main.path(forResource: __imgName__, ofType: "png")!)!
}

func JF_RGBCOLOR(r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor{
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}
func JF_RGBColorFromHex(rgbValue: Int) -> (UIColor) {
    return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16)) / 255.0,
                   green: ((CGFloat)((rgbValue & 0xFF00) >> 8)) / 255.0,
                   blue: ((CGFloat)(rgbValue & 0xFF)) / 255.0, alpha: 1.0)
}

