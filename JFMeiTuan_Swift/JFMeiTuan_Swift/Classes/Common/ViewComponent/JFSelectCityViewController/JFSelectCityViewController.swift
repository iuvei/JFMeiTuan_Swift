//
//  JFSelectCityViewController.swift
//  JFMeiTuan_Swift
//
//  Created by TuBieBuTu on 2018/8/26.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFSelectCityViewController: JFBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initNav()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension JFSelectCityViewController{
    func initNav()  {
        self.title = "选择城市"
        self.setupCustomLeftWithImage(image: UIImage.init(named: "baby_pintuan_close")!, target: self, action: #selector(leftBtnClick))
    }
    func leftBtnClick()  {
        self.dismiss(animated: true, completion: nil)
    }
}
