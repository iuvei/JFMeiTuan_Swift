//
//  JFMineCollectionCell.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/7/23.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFMineCollectionCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var desLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    class func cellWithTableView(_ collectionView:UICollectionView ,_ indexPath:NSIndexPath) -> JFMineCollectionCell {
        
        let JFMineCollectionCellID = "JFMineCollectionCellID"
        
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: JFMineCollectionCellID as String, for: indexPath as IndexPath)
        
        if cell == nil {
            cell = Bundle.main.loadNibNamed("JFMineCollectionCell", owner: nil, options: nil)?.last as! JFMineCollectionCell
        }
        return cell as! JFMineCollectionCell

    }

}
