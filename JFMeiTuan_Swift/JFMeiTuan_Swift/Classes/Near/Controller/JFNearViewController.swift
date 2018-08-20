//
//  JFNearViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/9.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFNearViewController: JFBaseViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "附近"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension JFNearViewController{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if section == 0 {
            return 1
        }
        return 30
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        if indexPath.section == 0 {
            let cell:JFCarouseCell  = JFCarouseCell.cellWithTableView(tableView)
            cell.imageUrlArray = ["http://pic9.photophoto.cn/20081128/0033033999061521_b.jpg","http://p17.qhimg.com/bdm/1600_900_85/d/_open360/fengjing25/Banff-National-Park-desktopsky-41283.jpg","http://pic23.photophoto.cn/20120505/0034034818753393_b.jpg","http://pic31.nipic.com/20130713/8821914_171955153144_2.jpg"]
            return cell
        }
        let cell:JFNormalOrderCell  = JFNormalOrderCell.cellWithTableView(tableView)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return UIView.init()
        }else{
            let headView:JFNearClassHearderView  = JFNearClassHearderView.headViewWithTableView(tableView)
            return headView
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0.0001
        }else{
            return 60
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: true)
    }
}
