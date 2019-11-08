//
//  ShowBillDetailsViewController.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
class ShowBillDetailsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var selectedRow : Int = 0
    var billArray : [Bill] = []
    @IBOutlet weak var tblBills: UITableView!
    @IBOutlet weak var lblBillPay: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblId: UILabel!
    override func viewDidLoad()
    {
        selectedRow = BillListTableViewController.SELECTED_ROW
        billArray = MyDataStore.getBillsOfCustomer(row: selectedRow)
        getCustomer(selectedRow: selectedRow)
        self.tblBills.delegate = self
        self.tblBills.dataSource = self
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
    func getCustomer(selectedRow : Int)
    {
        let customer : Customer = MyDataStore.customerArray[selectedRow]
        lblId.text = "Customer Id : \(customer.customerid)"
        lblName.text = "Customer Name : \(customer.fullName)"
        lblEmail.text = "Customer Email : \(customer.getemail)"
        lblBillPay.text = "Total Bill : \(customer.calculateTotalBill().currency())"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        print("bill array count : ",billArray.count)
        return billArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(132)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        print("bill array count : ",billArray.count)
        let cell = tableView.dequeueReusableCell(withIdentifier: "BillCell") as! BillTableViewCell
        let customer : Customer = MyDataStore.customerArray[selectedRow]
        //billArray = customer.arrayOfBills
        let bill = billArray[indexPath.row]
        print("bill -> ",bill.billId," ",bill.billDate)
        cell.lblBillId.text = "Bill Id : \(String(bill.billId))"
        cell.lblType.text = "Bill Type : \(String(bill.billType.rawValue))"
        cell.lblDate.text = "Bill Date : \(String(bill.billDate.getForamttedDate()))"
        cell.lblPay.text = "Bill Amount : \(bill.totalBillAmount.currency())"
        return cell
    }
}
