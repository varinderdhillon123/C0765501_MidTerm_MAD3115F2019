//
//  CustomerListTableViewController.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillListTableViewController: UITableViewController {
    public static var SELECTED_ROW : Int = 0
    override func viewDidLoad()
    {
        self.title = "Customers"
        //MyDataStore.LoadCustomers()
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MyDataStore.customerArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        let customer = MyDataStore.customerArray[indexPath.row]
        print("customer id : ",customer.customerid,"customer : ",customer.fullName)
        cell.textLabel?.text = customer.fullName
        //BillListTableViewController.SELECTED_ROW = indexPath.row
        return cell
    }


   
    
    
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "showDetail"
        {
            if let indexPath = tableView.indexPathForSelectedRow
            {
                //print("INDEX PATH : ",indexPath)
                BillListTableViewController.SELECTED_ROW = indexPath.row
                //let customer = MyDataStore.customerArray[indexPath.row]
                //print("customer detail name : ",customer.fullName)
                let controller = segue.destination as! ShowBillDetailsViewController
                //controller.lblId?.text = "Customer ID : \(customer.customerid)"
                //print(controller.lblId.text!)
                controller.navigationItem.leftItemsSupplementBackButton = true
                controller.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(GoToAddNewBillView))
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    @objc func GoToAddNewBillView()
    {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "AddNewBillVC") as! AddNewBillViewController
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }

}
