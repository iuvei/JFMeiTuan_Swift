//
//  JFBasicKnowledgeListViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/7/24.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFBasicKnowledgeListViewController: JFBaseViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var dataArray:NSArray {
        let tmpArray = ["传值"]
        return tmpArray as NSArray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "基础"
        tableView.rowHeight = 50;
        tableView.tableFooterView = UIView.init()

        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return dataArray.count;
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell  = JFMeCell.CellWithTableView(tableView)
        cell.typeLabel.text = dataArray[indexPath.row] as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let VC = JFSendValueViewController.init(nibName: "JFSendValueViewController", bundle: nil)
            navigationController?.pushViewController(VC, animated: true)
        }else if (indexPath.row == 1){
            
        }else if (indexPath.row == 2){
            
        }
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
