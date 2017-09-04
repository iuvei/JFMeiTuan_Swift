//
//  JFListCell.swift
//  JFMeiTuan_Swift
//
//  Created by linjianfang on 2017/8/30.
//  Copyright © 2017年 linjianfang. All rights reserved.
//

import UIKit

class JFListCell: UITableViewCell {
    //定义去全局的button用来接收外面传进来的模型数组
    var buttonArray : NSArray!

    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }
    
    
    /*构造方法创建cell*/
    class func CellWithTableView(_ tableView:UITableView, array:NSArray) -> JFListCell {
        
        let identifier = "JFListCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? JFListCell
        if  cell == nil {
            cell = JFListCell.init(style: .subtitle, reuseIdentifier: identifier, buttons:array)
            
        }
        
       
        
        return cell!
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        // Configure the view for the selected state
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(style: UITableViewCellStyle, reuseIdentifier: String?, buttons:NSArray) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        //注： init方法里面一般只是用来 创建控件 在layout里面 进行布局是比较合理的
        // 在init里面去取出的 cell 的宽度的320 在layout方法里面取出来的才是 正真是的宽度
        
        
//        let buttonW:CGFloat = self.bounds.width/3
//        let buttonH:CGFloat = self.bounds.height
       
        buttonArray = buttons
//        for index in 0...buttons.count-1 {
//             listButton = JFButton(type: UIButtonType.custom)
//            let rect = CGRect(x: buttonW * CGFloat(index), y: 0, width: buttonW, height: buttonH) // CGFloat, Double, Int
//            listButton.frame = rect
//            let buttonModel  = buttons[index] as? JFMeListCellModel
//            
//            listButton.setTitle(buttonModel?.buttonTitle, for: .normal)
//            listButton .setImage(UIImage.init(named: (buttonModel?.buttonImageName)!), for: .normal)
//            listButton.setTitleColor(UIColor.red, for: .normal)
//            self.contentView.addSubview(listButton)
//            
//        }

        
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        self.contentView.layoutIfNeeded()
        
        let buttonW:CGFloat = self.bounds.width/3
        let buttonH:CGFloat = self.bounds.height
        
        for index in 0...buttonArray.count-1 {
            let listButton = JFButton(type: UIButtonType.custom)
            let rect = CGRect(x: buttonW * CGFloat(index), y: 0, width: buttonW, height: buttonH) // CGFloat, Double, Int
            listButton.frame = rect
            let buttonModel  = buttonArray[index] as? JFMeListCellModel
            
            listButton.setTitle(buttonModel?.buttonTitle, for: .normal)
            listButton .setImage(UIImage.init(named: (buttonModel?.buttonImageName)!), for: .normal)
            listButton.setTitleColor(UIColor.red, for: .normal)
            self.contentView.addSubview(listButton)
            
        }

        
        let lineVew = UIView.init()
        lineVew.backgroundColor = JFStyle.lineColor()
        self.contentView.addSubview(lineVew)
        lineVew.snp.makeConstraints { (make) in
            make.width.equalTo(self.bounds.width-20)
            make.height.equalTo(0.5)
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
//        print("hhhhhh:\(self.bounds)")
        
        
    }

    
}
