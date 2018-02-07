//
//  DemoViewController.swift
//  App
//
//  Created by 默司 on 2018/2/7.
//  Copyright © 2018年 CCMOS. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    
    lazy var glView = UnityGetGLView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        guard let glView = glView else {
            return
        }
        
        self.view.addSubview(glView)
        glView.translatesAutoresizingMaskIntoConstraints = false
        
        if #available(iOS 11.0, *) {
            glView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            glView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
            glView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
            glView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        } else {
            // Fallback on earlier versions
            glView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
            glView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor).isActive = true
            glView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            glView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
