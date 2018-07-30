//
//  JFHomeNormalCell.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/7/27.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFHomeNormalCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func cellWithTableView(_ tableView:UITableView) -> JFHomeNormalCell {
        
        let JFHomeNormalCellID:NSString = "JFHomeNormalCellID"
        
        var mineCell = tableView.dequeueReusableCell(withIdentifier: JFHomeNormalCellID as String )
        
        if mineCell == nil {
            
            mineCell = Bundle.main.loadNibNamed("JFHomeNormalCell", owner: nil, options: nil)?.last as? UITableViewCell
        }
        return mineCell as! JFHomeNormalCell
    }
    
    
}
