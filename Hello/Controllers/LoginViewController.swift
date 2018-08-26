//
//  LoginViewController.swift
//  Hello
//
//  Created by admin on 26/8/2561 BE.
//  Copyright © 2561 admin. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class LoginViewController: UIViewController, FBSDKLoginButtonDelegate{
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result:
        FBSDKLoginManagerLoginResult!, error: Error!) {
        
        if let error = error{
            print(error)
        }else{
            print("Login Sucessesfully")
            print(FBSDKAccessToken.current())
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let newViewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! UINavigationController
            self.present(newViewController, animated: true, completion: nil)
           // self.navigationController?.pushViewController(newViewController, animated: true)
            
           
        }
        
        
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Logout")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print(FBSDKAccessToken.current())
        
        let loginButton = FBSDKLoginButton()
        view.addSubview(loginButton)
        
        loginButton.center = self.view.center
        loginButton.delegate = self
        
        loginButton.readPermissions = ["public_profile", "email"]
        
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
