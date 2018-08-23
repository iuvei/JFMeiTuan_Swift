//
//  JFModularTableViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/23.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFModularTableViewController: JFBaseViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    //申明一个数组
    var modelList:[[ModularModel]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpModelList()
        // Do any additional setup after loading the view.
    }
    
    func setUpModelList() {
        
        var subList:[ModularModel] = []
        subList.append(ModularModel(normalWithIcon: #imageLiteral(resourceName: "homeActive"), title: "测试", description: "测试", selectCell: {
            JFLog("ceshi")
        }))
        modelList.append(subList)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension JFModularTableViewController{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return modelList[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let model  = modelList[indexPath.section][indexPath.row]
        var cell = tableView.dequeueReusableCell(withIdentifier: "\(model.type)") as? (UITableViewCell & ModularModellProtocol)
        if cell == nil {
            cell = Bundle.main.loadNibNamed("JFModularCell", owner: nil, options: nil)?[model.type] as? (UITableViewCell & ModularModellProtocol)
        }
//        cell?.model = model
        
        return cell!;
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return modelList.count
    } // Default is 1 if not implemented
}

