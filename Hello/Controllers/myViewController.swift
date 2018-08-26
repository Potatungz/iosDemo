//
//  myViewController.swift
//  Hello
//
//  Created by admin on 22/8/2561 BE.
//  Copyright © 2561 admin. All rights reserved.
//

import UIKit

class myViewController: UIViewController {

    @IBOutlet weak var txtMessage: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       
        let destination: secondViewController = segue.destination as! secondViewController
         // Prepare pass object 
        
        
        destination.message = self.txtMessage.text!
        // Pass the text message to the new view cotroller
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
