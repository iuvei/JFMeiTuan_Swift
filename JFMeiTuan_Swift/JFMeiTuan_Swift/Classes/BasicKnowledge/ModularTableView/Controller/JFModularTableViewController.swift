//
//  JFModularTableViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/23.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFModularTableViewController: JFBaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //申明一个数组
    var modelList:[[ModularModel]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpModelList()
    }
    
    func setUpModelList() {
        
        
        /// 添加数据源
        var subList:[ModularModel] = []
        subList.append(ModularModel(normalWithIcon: #imageLiteral(resourceName: "喜欢"), title: "测试", description: "测试", selectCell: {
            JFLog("1")
        }))
        subList.append(ModularModel(bigWithIcon: #imageLiteral(resourceName: "大哭"), selectCell: {
            JFLog("2")

        }))
        modelList.append(subList)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension JFModularTableViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return modelList[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let model  = modelList[indexPath.section][indexPath.row]
        var cell = tableView.dequeueReusableCell(withIdentifier: "\(model.type)") as? (UITableViewCell & ModularModellProtocol)
        if cell == nil {
            cell = Bundle.main.loadNibNamed("JFModularCell", owner: nil, options: nil)?[model.type] as? (UITableViewCell & ModularModellProtocol)
        }
        cell?.model = model
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        modelList[indexPath.section][indexPath.row].selectCell!()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return modelList.count
    } // Default is 1 if not implemented
}

