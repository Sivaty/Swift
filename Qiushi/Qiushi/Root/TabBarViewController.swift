//
//  TabBarViewController.swift
//  Qiushi
//
//  Created by Link on 2019/12/8.
//  Copyright © 2019 Link. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addChild("糗事", HomeViewController.self)
        addChild("我的", MyViewController.self)
    }
    
    func addChild(_ title: String, _ type: UIViewController.Type) {
        let child = UINavigationController(rootViewController: type.init())
        child.title = title
    child.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
        addChild(child)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
