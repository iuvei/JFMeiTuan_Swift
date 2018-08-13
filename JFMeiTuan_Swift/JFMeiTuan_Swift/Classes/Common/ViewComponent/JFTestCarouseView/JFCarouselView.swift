//
//  JFCarouselView.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/13.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFCarouselView: UIView,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    var imageUrlArray:[String]?{
        didSet{
            pageControl.numberOfPages = (imageUrlArray?.count)!
            
            collectionView.reloadData()
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    
    /// 构建视图
    func setUpView() {
        
        collectionView.register(JFCarouselCollectionCell.self, forCellWithReuseIdentifier: carouselCellCollectionReuseIdentifierID as String)
        collectionView.backgroundColor                = UIColor.clear
        collectionView.bounces                        = false
        collectionView.showsVerticalScrollIndicator   = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate                       = self
        collectionView.dataSource                     = self
        collectionView.scrollsToTop                   = false
        collectionView.decelerationRate               = 0.0
        collectionView.isPagingEnabled                = true
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 10;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        let cell:JFCarouselCollectionCell = JFCarouselCollectionCell.cellWithCollectionView(collectionView, indexPath as NSIndexPath)
        cell.imageUrlStr = imageUrlArray?[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width: self.frame.size.width, height: self.frame.size.height )
    }
    

}
