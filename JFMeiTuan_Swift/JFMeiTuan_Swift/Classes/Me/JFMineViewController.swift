//
//  JFMineViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/7/23.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFMineViewController: JFBaseViewController ,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.rowHeight = 160
        tableView.reloadData()
        tableView.tableFooterView = UIView.init()
        
        setUpRightNavItem()
    }
  
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 3;
    }
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        if (indexPath.row == 1) {
            let cell:JFMineCell = JFMineCell.cellWithTableView(tableView)
            cell.cellTitle = "美团钱包"
            return cell;
        }else if (indexPath.row == 2 ){
            let cell:JFMineCell = JFMineCell.cellWithTableView(tableView)
            cell.cellTitle = "美团服务"
            return cell;
        }
        
        return JFMineCell.cellWithTableView(tableView)
    }
    
    
    
    func setUpRightNavItem() {
//        self.setupCustomRightWithImage(image: UIImage.init(named: "beauty_coupon_green_right")!, target: self, action:#selector(JFMineViewController.rightBtnClick))
        self.setupCustomRightWithTitle(title: "基础", target: self, action: #selector(JFMineViewController.rightBtnClick))
    }
    
    func rightBtnClick() {
        let VC:JFBasicKnowledgeListViewController = JFBasicKnowledgeListViewController.init(nibName: "JFBasicKnowledgeListViewController", bundle: nil)
        VC.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(VC, animated: true)
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
