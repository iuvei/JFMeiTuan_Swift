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
        //初始化控件
        headImageView = UIImageView()
        typeLabel = UILabel()
        typeLabel.font = UIFont.systemFont(ofSize: 14)

        infoLabel = UILabel()
        infoLabel.textAlignment = .right
        infoLabel.textColor = UIColor.gray
        infoLabel.font = UIFont.systemFont(ofSize: 12)
        arrowImageView = UIImageView()

        //添加控件
        self.contentView.addSubview(headImageView)
        self.contentView.addSubview(typeLabel)
        self.contentView.addSubview(infoLabel)
        self.contentView.addSubview(arrowImageView)
        
        
        headImageView.snp.makeConstraints { (make) in
            make.left.equalTo(20)
            make.width.height.equalTo(20)
            make.centerY.equalToSuperview()

            
        }
        
        
        //布局控件
        typeLabel.snp.makeConstraints { (make ) in
            //左边紧贴着headImageView 并右移10像素
            make.left.equalTo(headImageView.snp.right).offset(10)
            make.width.equalTo(100)
            make.height.equalToSuperview()
            make.centerY.equalToSuperview()

        }
        
        infoLabel.snp.makeConstraints { (make ) in
            make.right.equalTo(arrowImageView.snp.left).offset(-10)
            make.width.equalTo(100)
            make.height.equalToSuperview()
            make.centerY.equalToSuperview()

        }
        
        arrowImageView.snp.makeConstraints { (make ) in
            make.right.equalTo(-20)
            make.width.equalTo(8)
            make.height.equalTo(13)
            make.centerY.equalToSuperview()
        }
        
        
        
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        self.contentView.layoutIfNeeded()
        
        let lineVew = UIView.init()
        lineVew.backgroundColor = UIColor.lightGray
        self.contentView.addSubview(lineVew)
        lineVew.snp.makeConstraints { (make) in
            make.width.equalTo(self.bounds.width-20)
            make.height.equalTo(0.5)
            make.bottom.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        print("hhhhhh:\(self.bounds)")
        
        
    }

}
