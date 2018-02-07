//
//  ViewController.swift
//  App
//
//  Created by 默司 on 2018/2/7.
//  Copyright © 2018年 CCMOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Entry
        AppDelegate.instance.startUnity()
        // 
        NotificationCenter.default.addObserver(self, selector: #selector(unityReady), name: .unityReady, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func unityReady() {
        // TODO: after unity ready
        AppDelegate.instance.window?.rootViewController = UINavigationController(rootViewController: DemoViewController())
    }
}

extension Notification.Name {
    static let unityReady = NSNotification.Name("UnityReady")
}

