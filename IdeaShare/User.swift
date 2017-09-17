//
//  User.swift
//  IdeaShare
//
//  Created by 三城聖 on 2017/07/29.
//  Copyright © 2017年 三城聖. All rights reserved.
//

import UIKit

/*-------------------------------------------------------------------------------------------------------------------------*/

//アカウントを作る
struct CreateAccountInformation {
    var mailAddress: String = ""
    var userName: String = ""
    var userID: String = ""
    var password: String = ""
    
    init(mailAddress: String, userName: String, userID: String, password: String) {
        self.mailAddress = mailAddress
        self.userName = userName
        self.userID = userID
        self.password = password
    }
    
    init(userName: String, userID: String) {
        self.userName = userName
        self.userID = userID
    }
}

/*-------------------------------------------------------------------------------------------------------------------------*/

//自分の情報
struct MeInformation {
    var userName: String = ""
    var userID: String = ""
    var tsubuyaki: String = ""
    var tsubuyakiNum: Int?
    var follow: Int?
    var follower: Int?
    var userImage: UIImage?
    var userBackgroundImage: UIImage?
    var userLanguage: String = ""
    
    init(userName: String, userID: String, tsubuyaki: String, tsubuyakiNum: Int, follow: Int, follower: Int, userImage: UIImage, userBackgroundImage: UIImage, userLanguage: String) {
        self.userName = userName
        self.userID = userID
        self.tsubuyaki = tsubuyaki
        self.tsubuyakiNum = tsubuyakiNum
        self.follow = follow
        self.follower = follower
        self.userImage = userImage
        self.userBackgroundImage = userBackgroundImage
        self.userLanguage = userLanguage
    }
    
    init(userName: String){
        self.userName = userName
    }
    
    init(userID: String) {
        self.userID = userID
    }
}

/*-------------------------------------------------------------------------------------------------------------------------*/

//他人の情報
struct UserInformation {
    var userName: String = ""
    var userID: String = ""
    var tsubuyaki: String = ""
    var tsubuyakiNum: Int?
    var follow: Int?
    var follower: Int?
    var userImage: UIImage?
    var userBackgroundImage: UIImage?
    var userLanguage: String = ""
    
    init(userName: String, userID: String, tsubuyaki: String, tsubuyakiNum: Int, follow: Int, follower: Int, userImage: UIImage, userBackgroundImage: UIImage, userLanguage: String) {
        self.userName = userName
        self.userID = userID
        self.tsubuyaki = tsubuyaki
        self.tsubuyakiNum = tsubuyakiNum
        self.follow = follow
        self.follower = follower
        self.userImage = userImage
        self.userBackgroundImage = userBackgroundImage
        self.userLanguage = userLanguage
    }
    
}

/*-------------------------------------------------------------------------------------------------------------------------*/

//つぶやきを読み込む
struct UserTsubuyaki {
    var tsubuyakiTime: NSDate?
    var RTCount: Int?
    var favoriteCount: Int?
    var goodCount: Int?
    var replyCount:Int?
    
    init(tsubuyakiTime: NSDate, RTCount: Int,favoriteCount: Int, goodCount: Int, replyCount: Int) {
        self.tsubuyakiTime = tsubuyakiTime
        self.RTCount = RTCount
        self.favoriteCount = favoriteCount
        self.goodCount = goodCount
        self.replyCount = replyCount
    }
}

/*-------------------------------------------------------------------------------------------------------------------------*/
