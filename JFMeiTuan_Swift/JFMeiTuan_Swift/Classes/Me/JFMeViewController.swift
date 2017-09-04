//
//  JFMeViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjianfang on 2017/8/29.
//  https://github.com/tubie/JFMeiTuan_Swift3.0
//

import UIKit
import SwiftyJSON
import ObjectMapper

class JFMeViewController: JFBaseViewController ,UITableViewDataSource,UITableViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //初始化导航栏
        initNav()
        
        //初始化视图
        initView()
        
        
    }
    //初始化导航栏
    func initNav(){
//        self.title = "我的"
        //去除系统的所有的导航栏下划线
//        UINavigationBar.appearance().shadowImage = UIImage()
//        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        //去除系统的所有的导航栏下划线
//        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        navigationController?.navigationBar.shadowImage = UIImage()
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
        
//        self.navigationController?.navigationBar.tintColor = JFStyle.navigarionBarColor()
        
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(setting))
        let play = UIBarButtonItem(title: "Play", style: .plain, target: self, action: #selector(notice))
        
        navigationItem.rightBarButtonItems = [add, play]

        

    }
    
    
   

    
    func setting(sender: AnyObject){
        
    }
    func notice(sender: AnyObject){
        
    }
   
    //初始化视图
    func initView() {
        
        //获取屏幕的尺寸
        let fullScreenSize = UIScreen.main.bounds.size
        // Do any additional setup after loading the view.
        //[[UIScreen mainScreen] applicationFrame].size
        
        let meTableView = UITableView(frame :.zero, style:.grouped)
        meTableView.separatorStyle = .none


        self.view.addSubview(meTableView)
        
        //用snapkit布局
        meTableView.snp.makeConstraints { (make) in
            make.height.equalTo(fullScreenSize.height-64-50)
            make.width.equalTo(fullScreenSize.width)
            make.center.equalTo(self.view)
        }
        
        meTableView.register(JFMeCell.classForCoder(), forCellReuseIdentifier: ID)
        meTableView.register(JFMeHeaderCell.classForCoder(), forCellReuseIdentifier: headerCellID)
        meTableView.register(JFListCell.classForCoder(), forCellReuseIdentifier: ListCellID)


        meTableView.dataSource = self
        meTableView.delegate = self
        
        meTableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if section == 0 {
            return 1
        }else if section == 1 {
            return 1
        }
        return cellList().count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
  
        var cell  = UITableViewCell()
        
        if indexPath.section == 0 {
            
            cell = JFMeHeaderCell.CellWithTableView(tableView)
            
            let InfoDictionary = ["acconnt":"lin18936679226","info":"个人信息","headImageName":"baby_icon_booking"]
            
            //传递模型
            (cell as? JFMeHeaderCell)? .meInfoModel =  JFMeInfoModel(JSON: InfoDictionary)//地点转模型

            return cell

        }else if indexPath.section == 1 {
            //创建cell
            cell = JFListCell.CellWithTableView(tableView)

            //获取是三个按钮的数组源
            let jsonArray = listButtons()
            //字典数组转模型数组
            let buttons:[JFMeListCellModel] = Mapper<JFMeListCellModel>().mapArray(JSONArray: jsonArray as! [[String : Any]])
         
            //传递模型数组
            (cell as! JFListCell).buttonArray = buttons as NSArray?
            return cell

          
            
        }else{
            //创建cell
            cell =  JFMeCell.CellWithTableView(tableView)
            //字典数组转模型数组
            let modelArray = Mapper<JFMeModel>().mapArray(JSONArray: cellList() as! [[String : Any]])
            
            //传递模型
            (cell as? JFMeCell)? .meModel = modelArray[indexPath.row]
            
            //返回cell
            return cell
            
        }

    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        if indexPath.section == 0 {
            return 100
        }
        else if indexPath.section == 1 {
            return 60
        }
        return 44
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print(indexPath.row)
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat{
        if section == 0   {
            return CGFloat.leastNormalMagnitude

        }else if section == 1{
            return CGFloat.leastNonzeroMagnitude
        }
        return tableView.sectionHeaderHeight
    }

    func listButtons() -> Array<Any> {
        let dict1 = ["buttonTitle":"收藏","buttonImageName":"baby_icon_booking"]
        let dict2 = ["buttonTitle":"评价","buttonImageName":"baby_icon_booking"]
        let dict3 = ["buttonTitle":"评价","buttonImageName":"baby_icon_booking"]
        
        let jsonArray = [dict1,dict2,dict3]
        
        return jsonArray
    }
    
    func cellList () -> Array<Any> {

        let dict1 = ["headImageName":"baby_icon_booking","type":"什么跟什么","info":"卧槽"]
        let dict2 = ["headImageName":"baby_icon_booking","type":"什么跟什么","info":"卧槽"]
        let dict3 = ["headImageName":"baby_icon_booking","type":"什么跟什么","info":"卧槽"]
        let dict4 = ["headImageName":"baby_icon_booking","type":"什么跟什么","info":"卧槽"]
        let dict5 = ["headImageName":"baby_icon_booking","type":"什么跟什么","info":"卧槽"]
        let dict6 = ["headImageName":"baby_icon_booking","type":"什么跟什么","info":"卧槽"]

        let jsonArray = [dict1,dict2,dict3,dict4,dict5,dict6]
        
        return jsonArray
    }

    // 懒加载
    lazy var datas: [Int] = {
        // 创建一个存放int的数组
        var nums = [Int]()
        // 添加数据
        for i in 0...5 {
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
