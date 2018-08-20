
//
//  JFNearClassHearderView.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/20.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

//定义一个协议 声名一个协议的方法 buttonClick
protocol JFNearClassHearderViewDelegate:NSObjectProtocol {
    //cell的类型的枚举 用来表示cell的类型
    func nearHearderViewClickAtIndex(index:Int)
}

class JFNearClassHearderView: UITableViewHeaderFooterView {
    @IBOutlet weak var footBtn: UIButton!
    
    @IBOutlet weak var allBtn: UIButton!
    @IBOutlet weak var liveBtn: UIButton!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var hotelBtn: UIButton!
    
    var buttonArray:NSMutableArray!
    
    weak var delegate:JFNearClassHearderViewDelegate?

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //默认一第一个选中
        footBtn.isSelected = true
        
        buttonArray = NSMutableArray.init()
        buttonArray.add(allBtn)
        buttonArray.add(footBtn)
        buttonArray.add(liveBtn)
        buttonArray.add(hotelBtn)
        buttonArray.add(playBtn)

    }
    
    class func headViewWithTableView(_ tableView:UITableView) -> JFNearClassHearderView {
        
        let nearClassHearderViewID:NSString = "nearClassHearderViewID"
        
        var nearClassHearderView = tableView.dequeueReusableHeaderFooterView(withIdentifier: nearClassHearderViewID as String)

        
        if nearClassHearderView == nil {
            
            nearClassHearderView = Bundle.main.loadNibNamed("JFNearClassHearderView", owner: nil, options: nil)?.last as? JFNearClassHearderView
            
            //设置可点击
            nearClassHearderView?.contentView.isUserInteractionEnabled = true
        }
        return nearClassHearderView as! JFNearClassHearderView
    }
    
    
    @IBAction func footBtnClick(_ sender: Any) {
        buttonStatus(currentBtn: sender as! UIButton)
    }
    
    @IBAction func liveBtnClick(_ sender: Any) {
        
        buttonStatus(currentBtn: sender as! UIButton)

    }
    
    
    @IBAction func playBtnClick(_ sender: Any) {
        
        buttonStatus(currentBtn: sender as! UIButton)

    }
    
    
    @IBAction func hotelBtnClick(_ sender: Any) {
        
        buttonStatus(currentBtn: sender as! UIButton)

        
    }
    
    @IBAction func allBtnClick(_ sender: Any) {
        
        buttonStatus(currentBtn: sender as! UIButton)
    }
    
    func buttonStatus(currentBtn:UIButton)  {
        //先把所有逇button全部取消选中
        for button  in buttonArray {
            (button as! UIButton).isSelected = false
        }
        //选中当前的button
        currentBtn.isSelected = true
        
        if delegate != nil {
            delegate?.nearHearderViewClickAtIndex(index: currentBtn.tag)
        }
        
    }
    
}
