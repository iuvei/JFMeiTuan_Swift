//
//  JFListCell.swift
//  JFMeiTuan_Swift
//
//  Created by linjianfang on 2017/8/30.
//  Copyright © 2017年 linjianfang. All rights reserved.
//

import UIKit

class JFListCell: UITableViewCell {
    

    //重写set方法
    var buttonArray : NSArray?{
        didSet{
            setUpUI(array: buttonArray!)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.layoutIfNeeded()

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
        self.contentView.layoutIfNeeded()

        
        // Configure the view for the selected state
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        setUpUI()
        self.contentView.layoutIfNeeded()

        
    }
    
    func setUpUI(array:NSArray){
        let buttonW:CGFloat = self.bounds.width/3
        let buttonH:CGFloat = self.bounds.height
        
        for index in 0...array.count-1 {
            let listButton = JFButton(type: UIButtonType.custom)
            let rect = CGRect(x: buttonW * CGFloat(index), y: 0, width: buttonW, height: buttonH) // CGFloat, Double, Int
            listButton.frame = rect
            let dict  = array[index] as? NSDictionary
            
            listButton.setTitle(dict?["title"] as? String, for: .normal)
            listButton .setImage(UIImage.init(named: (dict?["imageName"] as? String)!), for: .normal)
            listButton.setTitleColor(UIColor.red, for: .normal)
            listButton.backgroundColor = UIColor.gray
            self.contentView.addSubview(listButton)

        }
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        self.contentView.layoutIfNeeded()
        
        print("hhhhhh:\(self.bounds)")
        
        
    }

    
}
