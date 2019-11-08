//
//  NewCustomerViewController.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class NewCustomerViewController: UIViewController {
    let temp = Singleton.getInstance()

    @IBOutlet weak var txtemail: UITextField!
    @IBOutlet weak var txtlname: UITextField!
    @IBOutlet weak var txtfname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savebutton(_ sender: UIBarButtonItem)
    {
        
    let cFName = txtfname.text
           let cLName = txtlname.text
           let cEmail = txtemail.text
           
           temp.addNewCustomer(First_Name: cFName!, Last_Name: cLName!, email: cEmail!)
        let alert = UIAlertController(title: "Succeed", message: "Customer Added", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
