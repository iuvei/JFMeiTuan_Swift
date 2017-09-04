//
//  JFListCell.swift
//  JFMeiTuan_Swift
//
//  Created by linjianfang on 2017/8/30.
//  Copyright © 2017年 linjianfang. All rights reserved.
//

import UIKit

class JFListCell: UITableViewCell {
    
    //定义去全局的变量供外部使用
    var buttonArray : NSArray?{
        didSet{
            //重写set方法
            setUpUI(array: buttonArray!)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }
    
    
    /*构造方法创建cell*/
    class func CellWithTableView(_ tableView:UITableView) -> JFListCell {
        
        let identifier = "JFListCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? JFListCell
        if  cell == nil {
            cell = JFListCell.init(style: .subtitle, reuseIdentifier: identifier)
            
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
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        
    }
    
    //根据外部传进来的model进行 控件创建和使用
    func setUpUI(array:NSArray){
        let buttonW:CGFloat = self.bounds.width/3
        let buttonH:CGFloat = self.bounds.height
        
        for index in 0...array.count-1 {
            let listButton = JFButton(type: UIButtonType.custom)
            let rect = CGRect(x: buttonW * CGFloat(index), y: 0, width: buttonW, height: buttonH) // CGFloat, Double, Int
            listButton.frame = rect
            let buttonModel  = array[index] as? JFMeListCellModel
            
            listButton.setTitle(buttonModel?.buttonTitle, for: .normal)
            listButton .setImage(UIImage.init(named: (buttonModel?.buttonImageName)!), for: .normal)
            listButton.setTitleColor(UIColor.red, for: .normal)
//            listButton.backgroundColor = UIColor.gray
            self.contentView.addSubview(listButton)

        }
    }
    
//    override func layoutSubviews() {
//        
//        super.layoutSubviews()
//        
//        self.contentView.layoutIfNeeded()
//        
//        let lineVew = UIView.init()
//        lineVew.backgroundColor = UIColor.lightGray
//        self.contentView.addSubview(lineVew)
//        lineVew.snp.makeConstraints { (make) in
//            make.width.equalTo(self.bounds.width-20)
//            make.height.equalTo(0.5)
//            make.bottom.equalToSuperview()
//            make.centerX.equalToSuperview()
//        }
//        
//        print("hhhhhh:\(self.bounds)")
//        
//        
//    }

    
}
