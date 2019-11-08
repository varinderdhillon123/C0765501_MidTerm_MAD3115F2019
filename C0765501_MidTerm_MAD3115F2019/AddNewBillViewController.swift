//
//  AddNewBillViewController.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class AddNewBillViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    static var SELECTED_ROW : Int = 0
    static var billTypeChoosen : String = ""
   @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var pickerBillType: UIPickerView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var txtbillId: UITextField!
    override func viewDidLoad()
    {
        self.pickerBillType.delegate = self
        self.pickerBillType.dataSource = self
        self.title = "New Bill"
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return BillType.allValues.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return BillType.allValues[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        AddNewBillViewController.billTypeChoosen = BillType.allValues[row]
    }
    @IBAction func actionAddBill(_ sender: Any)
    {
        //let billId : Int = Int(txtbillId.text!)!
        let billId : Int = 0
        let billDate : Date = datePicker.date
        let totalBill : Float = 0
        let customer = MyDataStore.customerArray[AddNewBillViewController.SELECTED_ROW]
        let count = customer.arrayOfBills.count + 1
        if(AddNewBillViewController.billTypeChoosen == "Mobile")
        {
            var bill = Mobile(billId: count, billDate: billDate, billType: BillType.Hydro, totalBillAmount: totalBill)
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "AddMobileBillVC") as! AddMobileBillViewController
            nextViewController.bill = bill
            nextViewController.selectedRow = AddNewBillViewController.SELECTED_ROW
            self.navigationController?.pushViewController(nextViewController, animated: true)
        }
        else if(AddNewBillViewController.billTypeChoosen == "Internet")
        {
            var bill = Internet(billId: count, billDate: billDate, billType: BillType.Internet, totalBillAmount: totalBill)
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "AddInternetBillVC") as! AddInternetBillViewController
            nextViewController.bill = bill
            nextViewController.selectedRow = AddNewBillViewController.SELECTED_ROW
            self.navigationController?.pushViewController(nextViewController, animated: true)
        }
        else
        {
            var bill = Hydro(billId: count, billDate: billDate, billType: BillType.Hydro, totalBillAmount: totalBill)
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "AddHydroBillVC") as! AddHydroBillViewController
            nextViewController.bill = bill
            nextViewController.selectedRow = AddNewBillViewController.SELECTED_ROW
            self.navigationController?.pushViewController(nextViewController, animated: true)
            
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
