//
//  CustomerListTableViewController.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class CustomerListTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tempvar = Singleton.getInstance()
    
    @IBOutlet weak var newcust: UIBarButtonItem!
   
    
    
    
    @IBOutlet weak var customerTable: UITableView!
    
    
     @IBAction func custnew(_ sender: UIBarButtonItem)
    {
        let storybrd1 = UIStoryboard(name: "Main", bundle: nil)
        let NewVC = storybrd1.instantiateViewController(withIdentifier: "NewVC") as! NewCustomerViewController
        navigationController?.pushViewController(NewVC, animated: true)
    }
    
   override func viewDidLoad() {
        super.viewDidLoad()
        customerTable.delegate=self
        customerTable.dataSource=self
        navigationItem.hidesBackButton=true
        allLogOutButton()
    tempvar.createCust()
        

      
    }
   
 private func allLogOutButton()
            {
               let btnLogOut = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(CustomerListTableViewController.logout(sender:)))
            navigationItem.leftBarButtonItem = btnLogOut
                navigationItem.leftBarButtonItems = [btnLogOut]
    
            }
        
        @objc func logout(sender: UIBarButtonItem)
           {
                           navigationController?.popViewController(animated: true)
    
           }
    override func viewWillAppear(_ animated: Bool) {
        customerTable.reloadData()
        
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempvar.returnCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let x = tempvar.returnCustObject(custID: Int(indexPath.row+1))
         let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
         cell.textLabel?.text = x?.fullName
        return cell

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

