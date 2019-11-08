//
//  AddMobileBillViewController.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddMobileBillViewController: UIViewController {

    var selectedRow : Int?
    var bill = Mobile()
    @IBOutlet weak var txtminutesUsed: UITextField!
    @IBOutlet weak var txtGbUsed: UITextField!
    @IBOutlet weak var txtMobileNumber: UITextField!
    @IBOutlet weak var txtModelName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func actionAddBill(_ sender: Any)
    {
        let empty : String = ""
        if(txtModelName.text! == empty || txtModelName.text! == empty || txtminutesUsed.text! == empty || txtGbUsed.text! == empty)
        {
            
            let alertControl = UIAlertController(title: "Message", message: "Sorry Dont leave any Fields Empty ", preferredStyle: .alert)
            let actionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertControl.addAction(actionOk)
            self .present(alertControl , animated: true , completion: nil)
        }
        else
        {
            if(txtMobileNumber.text!.count == 10)
            {
                
                let modelname = txtModelName.text!
                let mobileNumber = txtMobileNumber.text!
                let Gbused : Float = Float(txtGbUsed.text!)!
                let minutesUsed : Float = Float(txtminutesUsed.text!)!
                var customer : Customer = MyDataStore.customerArray[selectedRow!]
                var finalBill : Bill = Mobile(obj: bill)
                customer.addBillToCustomer(bill: bill)
                //print("after customer bill : ",customer.arrayOfBills.count)
                MyDataStore.removeInsertCustomer(row: selectedRow!, customer: customer)
                let alertControl = UIAlertController(title: "Message", message: "New Bill Added Successfully", preferredStyle: .alert)
                let actionOk = UIAlertAction(title: "Ok", style: .default, handler:
                {
                        _ -> Void in
                        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "billListTableVC") as! BillListTableViewController
                        self.navigationController?.pushViewController(nextViewController, animated: true)
                    })
                    alertControl.addAction(actionOk)
                    self .present(alertControl , animated: true , completion: nil)
                    
                
            }
            else
            {
                let alertControl = UIAlertController(title: "Message", message: "Please Enter 10 digit valid mobile number ", preferredStyle: .alert)
                let actionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertControl.addAction(actionOk)
                self .present(alertControl , animated: true , completion: nil)
            }
        }
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
