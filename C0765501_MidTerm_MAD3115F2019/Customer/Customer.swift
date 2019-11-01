//
//  Customer.swift
//  C0766112_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Customer {
 
    var customerId : Int
    var customerFirstName : String
    var customerLastName : String
    var fullName : String{
        return "\(customerFirstName ) \(customerLastName)"
    }
    var customerEmail : String
    var arrayBill : [Bill]
    
    static var dictCustomers = [Int:Customer]()
    
    
    var totalBill : Float{
        var bill = 00.00
        
        for a in arrayBill{
            bill = bill + Double(a.billAmount)
        }
        return Float(bill)
    }
    
    
    init(customerId : Int , firstName : String , lastName: String , email: String , arrayOfBills: [Bill]) {
        self.customerId = customerId
        self.customerFirstName = firstName
        self.customerLastName = lastName
        self.customerEmail = email
        self.arrayBill = arrayOfBills
    }
    
    

    
    func displayNameSortedByTotal() {
        
        print("CustomerId: \(customerId)\n" + "Custome Name: \(fullName)\n" + "Customer Email: \(customerEmail)")
        print("Total Amount to Pay: \(totalBill.dollorConvertion())")
        print("\t************************************************")
    }
    
    
    static func addCustomers(customer : Customer){
        dictCustomers.updateValue(customer, forKey: customer.customerId)
    }
    
    static func sortCustomerUsingTotal() {
        print("")
        print("Customer details in ascending order with respect to total bill to be paid\n")
        let customers = dictCustomers.sorted(by: {a,b in
            return a.value.totalBill > b.value.totalBill
        })
        
        for newList in customers{
            newList.value.displayNameSortedByTotal()
        }
    }
    
    static func getCustomerByCustomerId(customerId : Int)  {
        print("")
        if let customer = dictCustomers[customerId] {
            print("\t\tDetails of Customer whose id is: \(customerId)")
            print("\t\tCustomer Name is: \(customer.fullName)")
            print("\t\tCustomer Email is: \(customer.customerEmail)")
        }else {
            print("\t\tThere is no customer with id: \(customerId)")
        }
    }
    
}
