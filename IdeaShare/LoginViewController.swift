//
//  LoginViewController.swift
//  IdeaShare
//
//  Created by 三城聖 on 2017/06/25.
//  Copyright © 2017年 三城聖. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // ナビバーの表示を切り替える
        if let nv = navigationController {
            let hidden = !nv.isNavigationBarHidden
            nv.setNavigationBarHidden(hidden, animated: true)
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
