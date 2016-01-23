//
//  File.swift
//  NES
//
//  Created by KAREN on 2016/01/16.
//  Copyright © 2016年 KAREN. All rights reserved.

import UIKit

class Profile: UIViewController {
    @IBOutlet var label: UILabel!
    @IBOutlet var titleField0: UITextField!
    @IBOutlet var titleField1: UITextField!
    @IBOutlet var titleField2: UITextField!
    @IBOutlet var titleField3: UITextField!
    @IBOutlet var titleField4: UITextField!
    @IBOutlet var titleField5: UITextField!
    @IBOutlet var titleField6: UITextField!
    
    
    
    let saveData: NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        titleField0.text = saveData.objectForKey ("title") as? String
        titleField1.text = saveData.objectForKey ("title1") as? String
        titleField2.text = saveData.objectForKey ("title2") as? String
        titleField3.text = saveData.objectForKey ("title3") as? String
        titleField4.text = saveData.objectForKey ("title4") as? String
        titleField5.text = saveData.objectForKey ("title5") as? String
        titleField6.text = saveData.objectForKey ("title6") as? String
}
    @IBAction func saveMemo() {
        saveData.setObject (titleField0.text, forKey: "title")
        saveData.setObject (titleField1.text, forKey: "title1")
        saveData.setObject (titleField2.text, forKey: "title2")
        saveData.setObject (titleField3.text, forKey: "title3")
        saveData.setObject (titleField4.text, forKey: "title4")
        saveData.setObject (titleField5.text, forKey: "title5")
        saveData.setObject (titleField6.text, forKey: "title6")

    
        
  

    }



override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    
    
}

}





    