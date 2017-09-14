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
    
    /// 自定义导航栏
    private lazy var customNavigationBar = UIView()
    /// 自定义导航栏完全不透明时的偏移量边界(根据需求设定)
    private let alphaChangeBoundary = JFStyle.screenWidth() * (212 / 375) - 64
    


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
        
        customNavigationBar.frame = CGRect(x: 0, y: 0, width: JFStyle.screenWidth(), height: 64)
        customNavigationBar.backgroundColor = UIColor.red
        
        self.navigationController?.view.insertSubview(customNavigationBar, at: 1)
        
//        // 1.设置导航栏标题属性：设置标题颜色
//        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
//        // 2.设置导航栏前景色：设置item指示色
//        self.navigationController?.navigationBar.tintColor = UIColor.purple
//        
//        // 3.设置导航栏半透明
//        self.navigationController?.navigationBar.isTranslucent = true
//        
//        // 4.设置导航栏背景图片
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
//        
//        // 5.设置导航栏阴影图片
//        self.navigationController?.navigationBar.shadowImage = UIImage()

        
        
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
//            make.height.equalTo(fullScreenSize.height)
//            make.width.equalTo(fullScreenSize.width)
            make.width.height.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        homeTableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: ID)
        homeTableView.dataSource = self
        homeTableView.delegate = self
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if section == 4 {
            return datas.count

        }
        return 1
        
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


