//
//  SettingsViewController.swift
//  Hello
//
//  Created by admin on 26/8/2561 BE.
//  Copyright © 2561 admin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

   // let privateSettingKey = "privateSetting"
    
    @IBOutlet weak var switchPrivate: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //let privateSetting: Bool = UserDefaults().bool(forKey: self.privateSettingKey)
        
        //user extension
        let privateSetting: Bool = UserDefaults().getPrivate()
        self.switchPrivate.isOn = privateSetting

    }

    @IBAction func doTogglePrivate(_ sender: Any) {
        
        //UserDefaults().set(switchPrivate.isOn, forKey: self.privateSettingKey)
        
        //user extension 
        UserDefaults().setPrivate(value: self.switchPrivate.isOn)
        
    }
}
