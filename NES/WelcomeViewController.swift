//
//  ViewController.swift
//  NES
//
//  Created by KAREN on 2016/01/14.
//  Copyright © 2016年 KAREN. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class WelcomeViewController: UIViewController , FBSDKLoginButtonDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //faebookのログインページを作成！

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //facebookからログインからユーザー登録
    func loginButton(loginButton: FBSDKLoginButton!,didCompleteWithResult
        result: FBSDKLoginManagerLoginResult!, error: NSError!) {
            print("User Logged In")
            
            if ((error) != nil)
            {
                //エラー処理
            } else if result.isCancelled {
                //キャンセルされた時
            } else {
                //必要な情報が取れていることを確認(今回はemail必須)
                if result.grantedPermissions.contains("email")
                {
                    // 次の画面に遷移（後で）
                }
            }
    }
    
    //ログアウトボタンが押された時の処理
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
    override func viewDidAppear(animated: Bool) {
        if (FBSDKAccessToken.currentAccessToken() != nil) {
            print("User Already Logged In")
            //後で既にログインしていた場合の処理（メイン画面へ遷移）を書く
        } else {
            print("User not Logged In")
            let loginView : FBSDKLoginButton = FBSDKLoginButton()
            self.view.addSubview(loginView)
            loginView.center = self.view.center
            loginView.readPermissions = ["public_profile", "email", "user_friends"]
            loginView.delegate = self
        }
    }
    @IBAction func a(){
        
    }
    
    
    
}

