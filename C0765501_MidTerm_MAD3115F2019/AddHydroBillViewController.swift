//
//  AddHydroBillViewController.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddHydroBillViewController: UIViewController {
    var selectedRow : Int?
    var bill = Hydro()
    @IBOutlet weak var actionAddHydroBill: UIButton!
    @IBOutlet weak var txtUnitConsumed: UITextField!
    @IBOutlet weak var txtagencyName: UITextField!
    override func viewDidLoad()
    {
        //print("hydro bill --> ")
        //print(" bill id : ",bill.billId)
        //print("bill type : ",bill.billType.rawValue)
        //print("bill date : ",bill.billDate)
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func actionAddHydroBill(_ sender: Any)
    {
        let agencyName : String = txtagencyName.text!
        let unitConsumed : Float = Float(txtUnitConsumed.text!)!
        self.bill.agencyName = agencyName
        self.bill.unitConsumed = unitConsumed
        var customer : Customer = MyDataStore.customerArray[selectedRow!]
        var finalBill : Bill = Hydro(obj: bill)
        print("before customer bill : ",customer.arrayOfBills.count)
        customer.addBillToCustomer(bill: bill)
        print("after customer bill : ",customer.arrayOfBills.count)
        MyDataStore.removeInsertCustomer(row: selectedRow!, customer: customer)
        let alertControl = UIAlertController(title: "Message", message: "New Bill Added Successfully", preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .default, handler:
        {
            _ -> Void in
            /*let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let ShowBillDetailsVC = storyboard.instantiateViewController(withIdentifier: "ShowBillDetailsVC") as! ShowBillDetailsViewController
            let navcon = UINavigationController(rootViewController: ShowBillDetailsVC)
            self.present(navcon, animated: true, completion: nil)
          */
            self.navigationController?.popToRootViewController(animated: true)
        })
        alertControl.addAction(actionOk)
        self .present(alertControl , animated: true , completion: nil)
        bill.display()
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
