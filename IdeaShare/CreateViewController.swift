//
//  CreateViewController.swift
//  IdeaShare
//
//  Created by 三城聖 on 2017/06/25.
//  Copyright © 2017年 三城聖. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var mailAddressTextField: UITextField!
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userIDTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let textFields = [1: "mailAddressTextField", 2: "userNameTextField", 3: "userIDTextField", 4: "passwordTextField"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //delegateの設定
        mailAddressTextField.delegate = self
        userNameTextField.delegate = self
        userIDTextField.delegate = self
        passwordTextField.delegate = self
        
        //パスワード形式にする
        passwordTextField.isSecureTextEntry = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //アカウント作成
    @IBAction func CreateAccount() {
        
    }
    
    /*
     UITextFieldが編集終了する直前に呼ばれるデリゲートメソッド.
     */
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing:" + textField.text!)
        
        return true
    }
    
    /*
     改行ボタンが押された際に呼ばれるデリゲートメソッド.
     */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    //画面に表示される直前
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.configureObserver()
    }
    
    //別の画面に遷移する直前
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.removeObserver()
    }
    
    //Notification設定
    func configureObserver() {
        let notification = NotificationCenter.default
        notification.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        notification.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    
    //Notification削除
    func removeObserver() {
        
        let notification = NotificationCenter.default
        notification.removeObserver(self)
    }
    
    //キーボードが現れた時に画面をずらす
    func keyboardWillShow(notification: Notification?) {
        
        if mailAddressTextField.isEditing == true  {
            
        }else if userNameTextField.isEditing == true {
            let rect = (notification?.userInfo?[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
            let duration: TimeInterval? = notification?.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? Double
            UIView.animate(withDuration: duration!, animations: { () in let transform = CGAffineTransform(translationX: 0, y: -(rect.size.height))
                self.view.transform = transform
            })
        }else if userIDTextField.isEditing == true {
            let rect = (notification?.userInfo?[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
            let duration: TimeInterval? = notification?.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? Double
            UIView.animate(withDuration: duration!, animations: { () in let transform = CGAffineTransform(translationX: 0, y: -(rect.size.height))
                self.view.transform = transform
            })
        }else {
            let rect = (notification?.userInfo?[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
            let duration: TimeInterval? = notification?.userInfo?[UIKeyboardAnimationDurationUserInfoKey] as? Double
            UIView.animate(withDuration: duration!, animations: { () in let transform = CGAffineTransform(translationX: 0, y: -(rect.size.height))
                self.view.transform = transform
            })
        }
    }
    
    //キーボードが消えた時に画面を戻す
    func keyboardWillHide(notification: Notification?) {
        let duration: TimeInterval? = notification?.userInfo?[UIKeyboardAnimationCurveUserInfoKey] as? Double
        UIView.animate(withDuration: duration!, animations: { () in
            
            self.view.transform = CGAffineTransform.identity
        })
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
