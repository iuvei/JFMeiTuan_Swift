//
//  JFMineCell.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/7/23.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFMineCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource{

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var cellTitleClass: UILabel!
    
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
        
        collectionView.register(UINib(nibName: "JFMineCollectionCell", bundle: nil), forCellWithReuseIdentifier:reuseIdentifierID as String)

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
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 10;
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        return JFMineCollectionCell.cellWithCollectionView(collectionView, indexPath as NSIndexPath)
        
    }
}


