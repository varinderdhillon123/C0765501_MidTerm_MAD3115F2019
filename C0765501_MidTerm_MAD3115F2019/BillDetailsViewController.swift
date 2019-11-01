//
//  BillDetailsViewController.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class BillDetailsViewController:UIViewController, UITableViewDataSource, UITableViewDelegate {

@IBOutlet weak var billsTable: UITableView!

var billdata : Customer? = nil

override func viewDidLoad() {
    super.viewDidLoad()
    billsTable.delegate=self
    billsTable.dataSource=self

    // Do any additional setup after loading the view.
}

func numberOfSections(in tableView: UITableView) -> Int {
          return 1
      }
   
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmailCell", for: indexPath)
    cell.textLabel?.text = billdata?.customerEmail
       return cell
    

   }
   
}
