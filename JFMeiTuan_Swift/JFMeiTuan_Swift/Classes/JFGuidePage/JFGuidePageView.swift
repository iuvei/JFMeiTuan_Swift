//
//  JFGuidePageView.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/8/21.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class JFGuidePageView: UIView {
    
    var playerController:MPMoviePlayerController?
    

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(videoUrl:URL,isHideSkipBtn:Bool) {
        let frame  = CGRect.init(x: 0, y: 0, width: JFSCREEN_WIDTH, height:JFSCREEN_HEIGHT)
        super.init(frame: frame)
        
        //初始化播放器
        playerController = MPMoviePlayerController.init(contentURL: videoUrl)
        playerController?.view.frame = frame
        playerController?.view.alpha = 1.0
        playerController?.controlStyle = .none
        playerController?.repeatMode = .one
        playerController?.shouldAutoplay = true
        playerController?.prepareToPlay()
        addSubview((playerController?.view)!)
        
        //初始化开始按钮
        let movieStartBtn = UIButton.init(frame: CGRect.init(x: 20, y: JFSCREEN_HEIGHT-70, width: JFSCREEN_WIDTH-40, height: 40))
        movieStartBtn.layer.borderWidth = 1.0
        movieStartBtn.layer.cornerRadius = 20
        movieStartBtn.layer.borderColor = UIColor.white.cgColor
        movieStartBtn.setTitle("开始体验", for: .normal)
        movieStartBtn.alpha = 0.0
        playerController?.view.addSubview(movieStartBtn)
        movieStartBtn.addTarget(self, action: #selector(skipBtnClick), for: .touchUpInside)
        
        UIView.animate(withDuration: 1.0) {
            movieStartBtn.alpha = 1.0
        }
    }
    
    func skipBtnClick() {
        UIView.animate(withDuration: 1, animations: {
            self.alpha = 0
        }) { (finsh) in
            self.removeFromSuperview()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    deinit {
        print("deinit")
    }
   

}
