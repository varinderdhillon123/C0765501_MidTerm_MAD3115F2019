//
//  CustomerStruct.swift
//  C0753362_MAD3115_S2019_MidTerm
//
//  Created by vipul garg on 2019-07-11.
//  Copyright © 2019 vipul garg. All rights reserved.
//

import Foundation

struct CustomersStruct {
    let customerID : Int
    var customerFName : String
    var customerLName : String
    var email : String
    var password : String
    
     var fullName : String{
        return "\(customerFName ) \(customerLName)"
    }
    
}
