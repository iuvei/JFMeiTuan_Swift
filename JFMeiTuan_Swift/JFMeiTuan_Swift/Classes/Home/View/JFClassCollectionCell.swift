//
//  JFClassCollectionCell.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/13.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFClassCollectionCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    class func cellWithCollectionView(_ collectionView:UICollectionView ,_ indexPath:NSIndexPath) -> JFClassCollectionCell {
        
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeClassCellCollectionReuseIdentifierID as  String, for: indexPath as IndexPath) as? JFClassCollectionCell
        
        if cell == nil {
            cell = Bundle.main.loadNibNamed("JFClassCollectionCell", owner: nil, options: nil)?.last as? JFClassCollectionCell
        }
        
        return cell!
        
    }

}
