//
//  JFWebViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/8.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit
import WebKit

class JFWebViewController: JFBaseViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let webConfiguration = WKWebViewConfiguration()
        //创建wkwebview
        let webview = WKWebView.init(frame: CGRect(x: 0, y: 0, width: JF_SCREEN_WIDTH, height: JF_SCREEN_HEIGHT), configuration: webConfiguration)
        //创建网址
        
        let url = NSURL.init(string: "https://www.jianshu.com/u/be0e45643dcf")
        //创建请求
        let request = NSURLRequest.init(url: url! as URL)
        //加载请求
        webview.load(request as URLRequest)
        //添加wkwebview
        self.view.addSubview(webview)
        
        
        // Do any additional setup after loading the view.
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
