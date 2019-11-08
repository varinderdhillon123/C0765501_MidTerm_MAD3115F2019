//
//  ViewController.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBOutlet weak var switchbtn: UISwitch!
    
    
    
    @available(iOS 13.0, *)
    @IBAction func login(_ sender: Any) {
      
        
               let name = txtemail.text!
               let password = txtpassword.text!
               if name == "a" && password == "a"
                   {
                       
                       let sb=UIStoryboard(name: "Main", bundle: nil)
                       let CustVC = sb.instantiateViewController(withIdentifier: "CustVC") as! CustomerListTableViewController
                              navigationController?.pushViewController(CustVC, animated: true)
               }
                   else{
                       let alert = UIAlertController(title: "Invalid Username Or Password", message: "Please Enter Valid username or password", preferredStyle: .alert)

                       alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
                       alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
                       
                       self.present(alert, animated: true)
                   }
           }
           
           
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
}

