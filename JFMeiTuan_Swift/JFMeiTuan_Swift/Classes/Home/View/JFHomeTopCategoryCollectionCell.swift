//
//  JFTopCategoryCollectionCell.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/13.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFHomeTopCategoryCollectionCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    class func cellWithCollectionView(_ collectionView:UICollectionView ,_ indexPath:NSIndexPath) -> JFHomeTopCategoryCollectionCell {
        
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: homeTopCellCollectionReuseIdentifierID as  String, for: indexPath as IndexPath) as? JFHomeTopCategoryCollectionCell
        
        if cell == nil {
            cell = Bundle.main.loadNibNamed("JFHomeTopCategoryCollectionCell", owner: nil, options: nil)?.last as? JFHomeTopCategoryCollectionCell
        }
        
        return cell!
        
    }
}
