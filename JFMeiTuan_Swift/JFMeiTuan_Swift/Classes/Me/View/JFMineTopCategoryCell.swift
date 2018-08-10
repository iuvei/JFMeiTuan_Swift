//
//  JFMineTopCategoryCell.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/10.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFMineTopCategoryCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func cellWithTableView(_ tableView:UITableView) -> JFMineTopCategoryCell {
        
        let JFMineTopCategoryCell:NSString = "JFMineTopCategoryCell"
        
        var cell = tableView.dequeueReusableCell(withIdentifier: JFMineTopCategoryCell as String )
        
        if cell == nil {
            
            cell = Bundle.main.loadNibNamed("JFMineTopCategoryCell", owner: nil, options: nil)?.last as? UITableViewCell
        }
        return cell as! JFMineTopCategoryCell
    }
    
}
