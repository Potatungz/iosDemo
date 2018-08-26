//
//  File.swift
//  Hello
//
//  Created by admin on 26/8/2561 BE.
//  Copyright © 2561 admin. All rights reserved.
//

import Foundation

extension UserDefaults{
    
    enum SettingKeys: String {
        case privateKey
        case loginStatus
        
    }
    
    func setPrivate(value: Bool){
        self.set(value, forKey: SettingKeys.privateKey.rawValue)
        
    }
    
    func getPrivate() -> Bool{
        return self.bool(forKey: SettingKeys.privateKey.rawValue)
    }
    
    func setLoginStatus(value: Bool) {
        self.set(value, forKey: SettingKeys.loginStatus.rawValue)
    }
    
    func getLoginStatus() -> Bool{
        return self.bool(forKey: SettingKeys.loginStatus.rawValue)
    }
    
}
