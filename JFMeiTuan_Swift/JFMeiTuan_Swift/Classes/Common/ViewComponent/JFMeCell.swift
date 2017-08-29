//
//  JFMeCell.swift
//  JFMeiTuan_Swift
//
//  Created by TuBieBuTu on 17/8/29.
//  Copyright © 2017年 linjianfang. All rights reserved.
//

import UIKit

class JFMeCell: UITableViewCell {
    
    //声明全局变量 供外部使用
    var headImageView : UIImageView!
    var typeLabel : UILabel!
    var infoLabel : UILabel!
    var arrowImageView : UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
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
        
        setUpUI()
    }
    
    

    func setUpUI(){
        self.contentView.addSubview(headImageView)
        self.contentView.addSubview(typeLabel)
        self.contentView.addSubview(infoLabel)
        self.contentView.addSubview(arrowImageView)
        headImageView.snp.makeConstraints { (make) in
            make.leftMargin.equalTo(10)
            make.width.height.equalTo(20)
            
        }
        typeLabel.snp.makeConstraints { (make ) in
            make.leftMargin.equalTo(20)
            make.width.equalTo(100)
            make.height.equalToSuperview()
        }
        
        infoLabel.snp.makeConstraints { (make ) in
            make.leftMargin.equalTo(20)
            make.width.equalTo(100)
            make.height.equalToSuperview()
        }
        
        arrowImageView.snp.makeConstraints { (make ) in
            make.rightMargin.equalTo(20)
            make.width.height.equalTo(20)
        }
        
        
    }

}
