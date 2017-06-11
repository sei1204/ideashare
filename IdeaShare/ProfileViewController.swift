//
//  ProfileViewController.swift
//  IdeaShare
//
//  Created by 三城聖 on 2017/05/14.
//  Copyright © 2017年 三城聖. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var profileImage: UIImageView!
    
    @IBOutlet var tableView: UITableView!
    
    //cell行数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    //cell内容
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //インスタンス作成
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "文字列"
        
        
        
        //cellに表示する文字(テキストビューからのアクセス可にする)
        cell.textLabel?.text = "テキスト" //ユーザ名
        cell.detailTextLabel?.text = "サブテキスト"//ユーザID
        //つぶやきをlabelに代入して表示させる
        
        //cellに表示する文字の色(テキストビューからのアクセス可にする)
        cell.textLabel?.textColor = UIColor.black
        cell.detailTextLabel?.textColor = UIColor.gray
        
        //つぶやきをlabelに代入して色を変える
        
        //cellに表示する文字のフォント(アプリ全体のフォントにする)
        cell.textLabel?.font = UIFont(name: "Helvetica", size: 20)
        cell.detailTextLabel?.font = UIFont(name: "Helvetica", size: 15)
        
        //profileImage(プロフィール画像)
//        profileImage.image = UIImage(named: "あがりお.png")
        
        //cellに表示する画像(アイコン)
        cell.imageView?.image = UIImage(named: "あがりお.png")//大きさをちょうどよくする
        
        //cellの背景色
        cell.backgroundColor = UIColor.white
        
        //cellのアクセサリタイプ
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        //cellを返す
        return cell
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
