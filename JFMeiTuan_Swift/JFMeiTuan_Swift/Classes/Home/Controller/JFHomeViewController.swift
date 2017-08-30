//
//  JFHomeViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjianfang on 2017/8/29.
//  Copyright © 2017年 linjianfang. All rights reserved.
//

import UIKit
import SnapKit
let ID  = "cell"
let headerCellID  = "headerCellID"
let ListCellID  = "ListCellID"




class JFHomeViewController: JFBaseViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        //初始化导航栏
        initNav()
        
        //初始化视图
        initView()
        
        
    }
    //初始化导航栏
    func initNav(){
        self.title = "首页"
    }
    
    //初始化视图
    func initView() {
        //获取屏幕的尺寸
        let fullScreenSize = UIScreen.main.bounds.size
        // Do any additional setup after loading the view.
        
        let homeTableView = UITableView(frame :.zero, style:.plain)
        self.view.addSubview(homeTableView)
        
        //用snapkit布局
        homeTableView.snp.makeConstraints { (make) in
            make.height.equalTo(fullScreenSize.height-64-50)
            make.width.equalTo(fullScreenSize.width)
            make.center.equalTo(self.view)
        }
        
        homeTableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: ID)
        homeTableView.dataSource = self
        homeTableView.delegate = self
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return datas.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //获取cell
        let cell = tableView.dequeueReusableCell(withIdentifier: ID, for: indexPath)
        
        //配置cell
        cell.textLabel?.text = "假数据 -\(datas[indexPath.row]) ";
        
        //返回cell
        return cell
    }

    // 懒加载
    lazy var datas: [Int] = {
        // 创建一个存放int的数组
        var nums = [Int]()
        // 添加数据
        for i in 0...50 {
            nums.append(i)
        }
        // 返回
        return nums
    }()
    
    
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


