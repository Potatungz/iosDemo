//
//  ViewController.swift
//  Hello
//
//  Created by admin on 20/8/2561 BE.
//  Copyright © 2561 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isLightTheme = false
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myLabel.text = "Hello World after view load"
    }

    @IBAction func myButton(_ sender: Any) {
        self.myLabel.text = "Hello \(self.textName.text!)"
        
    }
    @IBAction func changeTheme(_ sender: Any) {
        view.backgroundColor = UIColor.black
        
        for eachView in view.subviews {
            eachView.backgroundColor = UIColor.black
            if let label = eachView as? UILabel{
                label.textColor = UIColor.darkGray
            }
            
            if let textField = eachView as? UITextField{
                textField.textColor = UIColor.white
            }
            
            if let button = eachView as? UIButton{
                button.backgroundColor = UIColor.lightGray
               
            }
        }
        
    }

    
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

