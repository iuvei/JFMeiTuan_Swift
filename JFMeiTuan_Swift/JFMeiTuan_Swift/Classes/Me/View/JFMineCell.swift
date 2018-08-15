//
//  JFMineCell.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/7/23.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFMineCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var cellTitleClass: UILabel!
    
    @IBOutlet weak var bottomLineView: UIView!
    @IBOutlet weak var collectionViewLayout: UICollectionViewFlowLayout!
    //重写set方法
    var cellTitle:NSString?{
        didSet{
            cellTitleClass.text = cellTitle! as String
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        //这个地方注意和OC很像，看看cell是通过什么创建的 纯代码还是xib如果是 纯代码则使用registerClass方法
        /**
         - (void)registerClass:(nullable Class)cellClass forCellWithReuseIdentifier:(NSString *)identifier;
         - (void)registerNib:(nullable UINib *)nib forCellWithReuseIdentifier:(NSString *)identifier;
         */
        collectionView.register(UINib(nibName: "JFMineCollectionCell", bundle: nil), forCellWithReuseIdentifier:reuseIdentifierID as String)
        
        //属性的方式设置间距
        collectionViewLayout.minimumLineSpacing = 0.0
        collectionViewLayout.minimumInteritemSpacing = 0.0
        
        collectionView.isScrollEnabled = false

        collectionView.reloadData()

        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func cellWithTableView(_ tableView:UITableView) -> JFMineCell {
        
        let JFMineCellID:NSString = "JFMineCellID"
        
        var mineCell = tableView.dequeueReusableCell(withIdentifier: JFMineCellID as String )
        
        if mineCell == nil {
            
            mineCell = Bundle.main.loadNibNamed("JFMineCell", owner: nil, options: nil)?.last as? UITableViewCell
        }
        return mineCell as! JFMineCell
    }
    
    
    /// UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 5;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        
        return JFMineCollectionCell.cellWithCollectionView(collectionView, indexPath as NSIndexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: (JFSCREEN_WIDTH-30)/4, height: (self.frame.size.height - 30)/2)
    }
    
    //代理的方式设置间距
//    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//        return 0.0
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0.0
//    }
    
}


