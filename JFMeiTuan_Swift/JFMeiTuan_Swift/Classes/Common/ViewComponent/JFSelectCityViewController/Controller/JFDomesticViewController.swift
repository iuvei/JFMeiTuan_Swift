//
//  JFDomesticViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/27.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFDomesticViewController: JFBaseViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        initData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /// 初始化数据
    func initData()  {
        
    }

}




// MARK: -
extension JFDomesticViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return 5
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell:JFDomesticNormalCell  = JFDomesticNormalCell.cellWithTableView(tableView)
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
}
