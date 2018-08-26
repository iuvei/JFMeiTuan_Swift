//
//  JFHomeViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjianfang on 2017/8/29.
//  Copyright © 2017年 linjianfang. All rights reserved.
//

import UIKit
import SnapKit
import ObjectMapper

let ID  = "cell"
let headerCellID  = "headerCellID"
let ListCellID  = "ListCellID"
class JFHomeViewController: JFBaseViewController,UITableViewDataSource,UITableViewDelegate,UISearchResultsUpdating,UISearchBarDelegate {

    var tableView  = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //初始化导航栏
        initNav()
        
        //初始化视图
        initView()
        
        //初始化数据
        initData()
    }
    
    //初始化视图
    func initView() {
        tableView = UITableView(frame :.zero, style:.plain)
        //设置tableView在拖拽tabelView的时候隐藏键盘
        tableView.keyboardDismissMode = .onDrag
        view.addSubview(tableView)
        
        //用snapkit布局
        tableView.snp.makeConstraints { (make) in
            make.width.height.equalToSuperview()
            make.top.equalToSuperview()
        }        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
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
    
    
    //初始化数据
    func initData(){
        
        JFBaseNetwork.shareInstance.initData()
    
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

extension JFHomeViewController{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return datas.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        switch indexPath.row {
        case 0:
            let cell:JFCarouseCell  = JFCarouseCell.cellWithTableView(tableView)
            cell.imageUrlArray = ["http://pic9.photophoto.cn/20081128/0033033999061521_b.jpg","http://p17.qhimg.com/bdm/1600_900_85/d/_open360/fengjing25/Banff-National-Park-desktopsky-41283.jpg","http://pic23.photophoto.cn/20120505/0034034818753393_b.jpg","http://pic31.nipic.com/20130713/8821914_171955153144_2.jpg"]
            return cell
        case 1:

            let cell:JFHomeTopCategoryCell  = JFHomeTopCategoryCell.cellWithTableView(tableView)
            
            let jsonArray:NSArray = JFStyle.getJsonWithName(name: "homeTopCategoryCell")
            
            let modelArray = Mapper<JFCommonModel>().mapArray(JSONArray: jsonArray as! [[String : Any]])
            cell.modelArray = modelArray
            
            return cell
        case 2:
            let cell:JFHomeClassCell  = JFHomeClassCell.cellWithTableView(tableView)
            
            let jsonArray:NSArray = JFStyle.getJsonWithName(name: "homeClass")
            
            let modelArray = Mapper<JFCommonModel>().mapArray(JSONArray: jsonArray as! [[String : Any]])
            cell.modelArray = modelArray
            
            return cell
        case 3:
            let cell:JFHomeActiveCell  = JFHomeActiveCell.cellWithTableView(tableView)
            cell.imageName = "homeActive"
            return cell
        case 4:
            let cell:JFHomeFeaturesCell  = JFHomeFeaturesCell.cellWithTableView(tableView)
            return cell
            
        default:
            let cell:JFHomeNormalCell  = JFHomeNormalCell.cellWithTableView(tableView)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 120
        case 1:
            return 100
        case 2:
            return 140
        case 3:
            return 200
        case 4:
            return 200
        default:
            return 110
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView .deselectRow(at: indexPath, animated: true)
    }

}

extension JFHomeViewController{
    
    func initNav() {
       
        //导航栏左边的按钮
        self.setupCustomLeftWithTitle(title: "上海", target: self, action:#selector(leftClick))
        
        //导航栏右边的按钮
        self.setupCustomRightWithImage(image: UIImage.init(named: "beauty_btn_play")!, target: self, action: #selector(rightClick))
        
        let searchResultVC  = JFSearchResultViewController.init(nibName: "JFSearchViewController", bundle: nil)
        
        let VC = UISearchController(searchResultsController: searchResultVC)
        VC.searchResultsUpdater = self
        VC.searchBar.delegate = self
        VC.hidesNavigationBarDuringPresentation = true
        VC.dimsBackgroundDuringPresentation = true
        VC.searchBar.searchBarStyle = .default
        VC.searchBar.sizeToFit()
        navigationItem.titleView = VC.searchBar
        
    }
    
    func leftClick() {
        
    }
    
    func rightClick() {
        
    }
    
    public func updateSearchResults(for searchController: UISearchController){
        
    }
    
}



