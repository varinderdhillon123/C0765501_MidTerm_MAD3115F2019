//
//  Customer.swift
//  C0766112_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Customer: IDisplay{
    var customerId: Int
    var firstName: String
    var lastName: String
    var fullName: String
    {
        get{
            return "\(firstName) \(lastName)"
        }
    }
    var emailId: String
    var totalBillAmount: Float = 0.0
    
    var billDictionary = [Int:Bill]()
    
    //billDictionary.updateValue(Bill, forKey: billId )

    
    
    init(customerId: Int, firstName: String, lastName: String ,  emailId: String) {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
        }
   
       func addBillToCustomer(b:Bill){
        billDictionary.updateValue(b, forKey: b.billId)
    }
    
      func calcTotalBillAmount() -> Float
    {
        //totalBillAmount = 0
        for i in billDictionary.values
        {
            totalBillAmount += i.billAmount
        }
        return Float(totalBillAmount)
    }
    
      func display() {
        print("\t")
         print("------CUSTOMER INFORMATION---------")
        print("Customer ID: \(customerId)")
         print("Customer Name: \(fullName)")
         print("Email Id: \(emailId)")
        // print("Customer ID: \(customerId)")
        
       
        print("------BILL INFORMATION---------")
        print("*********************************************")
        if billDictionary.isEmpty
        {
            print(" This Customer has no Bills to pay")
        }
        else
        {
            for b in billDictionary.values
                
            {
                b.display()
                print("*****************************************")
                
            }
            print("Total Bill Amount to Pay: \(calcTotalBillAmount().currencyFormat())")
            print("########################################")
        
    }
    
     
}
}
