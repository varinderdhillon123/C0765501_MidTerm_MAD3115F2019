//
//  Customer.swift
//  C0766112_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Customer
{
    static var CUSTOMER_ID_COUNT = 0
    
    static func display()
    {
        for customer in Customer.customerDict
        {
            var totalBill : Float = 0
            print("Customer Id : ",customer.key)
            print("Customer Full Name : ",customer.value.fullName)
            print("Customer Email ID : ",customer.value.getemail)
            print("\t\t---- Bill Information ----\t\t")
            for bill in customer.value.arrayOfBills
            {
                print("******************************************")
                bill.display()
                print("******************************************")
                //print("\t\t\tTotal Bill Amount to Pay : ",bill.calculateTotal().currency())
                totalBill = totalBill + bill.calculateTotal()
            }
            print("\t\t\tTotal Bill Amount to Pay : ",totalBill.currency())
        }
    }
    
    let customerid : Int

    private var firstName : String
    var getfirstName : String
    {
        get
        {
            return self.firstName
        }
    }
    
    private var lastName : String
    var getlastName : String
    {
        get
        {
            return self.lastName
        }
    }
    //computed value
    var fullName : String
    {
        return "\(self.firstName) \(self.lastName)"
    }
    
    private let email : String
    var getemail : String
    {
        get
        {
            return self.email
        }
    }
    
    public var arrayOfBills : [Bill] = [Bill]()
    //computed value
    var totalBillToPay : Float
    {
        var total : Float = 0
        for bill in arrayOfBills
        {
            total = total + bill.totalBillAmount
        }
        return total
    }
    
    init()
    {
        Customer.CUSTOMER_ID_COUNT += 1
        self.customerid = Customer.CUSTOMER_ID_COUNT
        self.firstName = ""
        self.lastName = ""
        self.email = ""
        self.arrayOfBills = []
    }
    init(customerid : Int,firstName : String,lastName : String,email : String,arrayOfBills : [Bill])
    {
        Customer.CUSTOMER_ID_COUNT += 1
        self.customerid = Customer.CUSTOMER_ID_COUNT
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        /*
        if !self.isValidEmail(emailStr: email)
        {
            throw CustomerError.invalidEmail
        }
 */
        self.arrayOfBills = arrayOfBills
    }
    init(customerid : Int,firstName : String,lastName : String,email : String)
    {
        Customer.CUSTOMER_ID_COUNT += 1
        self.customerid = Customer.CUSTOMER_ID_COUNT
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        /*
        if !self.isValidEmail(emailStr: email)
        {
            throw CustomerError.invalidEmail
        }
 */
    }
    
    
    init(firstName : String,lastName : String,email : String,arrayOfBills : [Bill])
    {
        Customer.CUSTOMER_ID_COUNT += 1
        self.customerid = Customer.CUSTOMER_ID_COUNT
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        /*
         if !self.isValidEmail(emailStr: email)
         {
         throw CustomerError.invalidEmail
         }
         */
        self.arrayOfBills = arrayOfBills
    }
    init(firstName : String,lastName : String,email : String)
    {
        Customer.CUSTOMER_ID_COUNT += 1
        self.customerid = Customer.CUSTOMER_ID_COUNT
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        /*
         if !self.isValidEmail(emailStr: email)
         {
         throw CustomerError.invalidEmail
         }
         */
    }
    
    static public var customerDict = [Int:Customer]()
    
    static func addCustomer(customer : Customer)
    {
        customerDict.updateValue(customer, forKey: customer.customerid )
    }
    
    static func getCustomerById(customerid : Int) -> Customer?
    {
        if let customerObj = customerDict[customerid]
        {
            return customerObj
        }
        else
        {
            return nil
        }
    }
    
    func calculateTotalBill() ->Float
    {
        var total : Float = 0
        for bill in self.arrayOfBills
        {
            total = total + self.totalBillToPay
        }
        return total
    }
    
    // For Email Valid
    public func isValidEmail(emailStr:String) -> Bool
    {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", regex)
        return emailTest.evaluate(with: emailStr)
    }
    
    public func returnNoofBill(customer : Customer) -> Int
    {
        return arrayOfBills.count
    }
    public func addBillsToCustomer(bills : [Bill])
    {
        self.arrayOfBills = bills
    }
    public func addBillToCustomer(bill : Bill)
    {
        self.arrayOfBills.append(bill)
    }
}

