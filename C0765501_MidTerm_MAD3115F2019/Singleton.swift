//
//  Singleton.swift
//  C0766598_MidTerm_MAD3115F2019
//
//  Created by Rizul goyal on 2019-11-01.
//  Copyright © 2019 MacStudent. All rights reserved.
//


import Foundation

class Singleton: NSObject
{
     private var customerDictionary  = [Int:Customer]()
    
    private static var obj = Singleton()
    
    
    private override init() {
        
    }
    
    internal static func getInstance() -> Singleton
    {
        return obj
    }
    
    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
        let c = customerDictionary.count + 1
        //let c1 = "c" + String(customerDictionary.count)
        let temp = Customer(customerID: c, customerFName: First_Name, customerLName: Last_Name, customerEmail: email)
        self.AddCustomer(customer: temp)
    }
    
    func returnCustObject(custID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if custID == k
            {
                return v
            }
        }
        return nil
        
    }
    
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
    
    func createCust()
    {
    let customer1 = Customer(customerID: 1, customerFName: "Varinder", customerLName: "Dhillon", customerEmail: "varinderdhillonl23@gmail.com ")
        AddCustomer(customer: customer1)
        let customer2 = Customer(customerID: 2, customerFName: "Charanpreet", customerLName: "kaur", customerEmail: "charanpreet12@gmail.com ")
        AddCustomer(customer: customer2)
        let customer3 = Customer(customerID: 3, customerFName: "Simranjit", customerLName: "Singh", customerEmail: "simranjitsingh1998@gmail.com ")
        AddCustomer(customer: customer3)
        let customer4 = Customer(customerID: 4, customerFName: "Sachin", customerLName: "Mahi", customerEmail: "simarmahi@gmail.com ")
        AddCustomer(customer: customer4)
        let customer5 = Customer(customerID: 5, customerFName: "Harmanpreet", customerLName: "Sharma", customerEmail: "harmanpreetsharma@gmail.com ")
        AddCustomer(customer: customer5)
    }
    
    

    
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerID!)
    }
    
    func returnNumber() -> Int {
        return customerDictionary.count
    }
    
    func printdata()
    {
        for i in customerDictionary.values
        {
            print(i.customerFName!)
        }
   
    }
    
}
