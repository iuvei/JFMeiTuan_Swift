//
//  JFSendValueViewController.swift
//  JFMeiTuan_Swift
//
//  Created by linjf on 2018/7/24.
//  Copyright © 2018年 linjianfang. All rights reserved.
//

import UIKit

class JFSendValueViewController: JFBaseViewController {


    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "传值"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func propertyClick(_ sender: Any) {
        let VC:JFReceiveValueViewController  = JFReceiveValueViewController.init(nibName: "JFReceiveValueViewController", bundle: nil)
        VC.receiveValue = textField.text! as NSString
        navigationController?.pushViewController(VC, animated: true)
    }
    @IBAction func delegateClick(_ sender: Any) {
        let VC  = JFReceiveValueViewController.init(nibName: "JFReceiveValueViewController", bundle: nil)
        navigationController?.pushViewController(VC, animated: true)
    }
    
    @IBAction func closureClick(_ sender: Any) {
        let VC  = JFReceiveValueViewController.init(nibName: "JFReceiveValueViewController", bundle: nil)
        navigationController?.pushViewController(VC, animated: true)
    }
    
    @IBAction func noticeClick(_ sender: Any) {
        let VC  = JFReceiveValueViewController.init(nibName: "JFReceiveValueViewController", bundle: nil)
        navigationController?.pushViewController(VC, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
