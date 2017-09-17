//
//  FirstViewController.swift
//  IdeaShare
//
//  Created by 三城聖 on 2017/05/14.
//  Copyright © 2017年 三城聖. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    /*-------------------------------------------------------------------------------------------------------------------------*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var accountName: String = ""
    var accountID: String = ""
    
    /*-------------------------------------------------------------------------------------------------------------------------*/
    
    //cell行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    //cell内容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //cell定数
        
        //インスタンス作成
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "myCell")
        cell.textLabel?.text = "文字列"
        tableView.rowHeight = 100
        
        //cellに表示する文字(テキストビューからのアクセス可にする)
        cell.textLabel?.text = "ui"//ユーザ名
        cell.detailTextLabel?.text = "test"//ユーザID
        //cellに表示する文字の色(テキストビューからのアクセス可にする)
        cell.textLabel?.textColor = UIColor.black
        cell.detailTextLabel?.textColor = UIColor.gray
        //つぶやきをlabelに代入して色を変える
        
        //cellに表示する文字のフォント(アプリ全体のフォントにする)
        cell.textLabel?.font = UIFont(name: "Helvetica", size: 20)
        cell.detailTextLabel?.font = UIFont(name: "Helvetica", size: 15)
        
        //cellに表示する画像(アイコン)
        cell.imageView?.image = UIImage(named: "あがりお.png")//大きさをちょうどよくする
        
        //cellの背景色
        cell.backgroundColor = UIColor.white
        
        //cellのアクセサリタイプ
        cell.accessoryType = UITableViewCellAccessoryType.none
        
        return cell
    }
}

