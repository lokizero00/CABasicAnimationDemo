//
//  FirstViewController.swift
//  CABasicAnimationDemo
//
//  Created by lokizero00 on 2017/10/13.
//  Copyright © 2017年 lokizero00. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var buttonOpacity:UIButton?
    @IBOutlet weak var buttonExpend:UIButton?
    @IBOutlet weak var redView:UIView?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title="首页"
        self.view.backgroundColor=UIColor.white
        
        buttonOpacity?.addTarget(self, action: #selector(self.cabOpacity), for: .touchUpInside)
        buttonExpend?.addTarget(self, action: #selector(self.cabExpend), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func cabOpacity(){
        let animation=CABasicAnimation(keyPath: "opacity")
        
        animation.fromValue=1.0
        animation.toValue=0.0
        animation.duration=3.0
        
        self.redView?.layer.add(animation, forKey: "View-opacity")
        self.redView?.alpha=0.0
    }
    
    @objc func cabExpend(){
        let animation=CABasicAnimation(keyPath: "bounds.size")
        animation.fromValue=NSValue(cgSize: CGSize(width: 2.0, height: 2.0))
        animation.toValue=NSValue(cgSize: (self.redView?.frame.size)!)
        animation.duration=3.0
        self.redView?.layer.add(animation, forKey: "View-expend")
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
