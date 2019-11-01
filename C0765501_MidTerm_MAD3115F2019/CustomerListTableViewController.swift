//
//  CustomerListTableViewController.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class CustomerListTableViewController: UIViewController {
    
    
    @IBOutlet weak var newcust: UIBarButtonItem!
    
    
    
    @IBAction func custnew(_ sender: UIBarButtonItem)
    {
        let storybrd1 = UIStoryboard(name: "Main", bundle: nil)
        let NewVC = storybrd1.instantiateViewController(withIdentifier: "NewVC") as! NewCustomerViewController
        navigationController?.pushViewController(NewVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
