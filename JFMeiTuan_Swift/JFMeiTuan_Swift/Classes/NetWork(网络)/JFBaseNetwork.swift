//
//  JFBaseNetwork.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/7.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit
import Alamofire

enum MethodType {
    case get
    case post
}

//定义一个block闭包
typealias success = () -> Any
typealias failure = () -> Error



class JFBaseNetwork: NSObject {
    var value = ""
    static let shareInstance = JFBaseNetwork()
    private override init(){}
    
    
    let successBack =  success.self
    let failureBack =  failure.self
    
}




