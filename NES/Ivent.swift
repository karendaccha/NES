//
//  File.swift
//  NES
//
//  Created by KAREN on 2016/01/16.
//  Copyright © 2016年 KAREN. All rights reserved.
//

import UIKit
import Photos


class Ivent: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    private var ImageView: UIImageView!
    var photoAssets = [PHAsset]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet var label0: UILabel!
        
    @IBOutlet var label1: UILabel!
    
    @IBOutlet var label2: UILabel!
    
    @IBOutlet var label3: UILabel!

    @IBOutlet var label4: UILabel!
    
    @IBAction func a(){
        enum PHAssetMediaType : Int {
            case Image
            
         /*   PHAuthorizationStatus status = [PHPhotoLibrary authorizationStatus];
            switch (status) {
            case PHAuthorizationStatusNotDetermined:
            // ユーザーはまだ、このアプリに与える権限を選択をしていない
            
            break;
            
            case PHAuthorizationStatusRestricted:
            // PhotoLibraryへのアクセスが許可されていない
            // parental controlなどで制限されていて、ユーザーはアプリのアクセスの許可を変更できない
            
            break;
            
            case PHAuthorizationStatusDenied:
            // ユーザーが明示的に、アプリが写真のデータへアクセスすることを拒否した
            
            break;
            
            default:
            case PHAuthorizationStatusAuthorized:
            // ユーザーが、アプリが写真のデータへアクセスすることを許可している
            
            break;
            }

        }
        
        }*/
    
    
    
    
   
    
   
        }
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

}
}
