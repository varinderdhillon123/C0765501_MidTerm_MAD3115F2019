//
//  Bill.swift
//  C0766112_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-18.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
 class Bill: IDisplay
{
    
     var billId: Int
     var billDate = String()
     var billType: TypeofBills
     enum TypeofBills{
        case Internet
        case Hydro
        case Mobile
    }
    var billAmount: Float
    
    
     init(billId: Int, billDate: String, billType: TypeofBills, billAmount: Float) {
        self.billId = billId
        self.billDate = billDate
        self.billAmount  = billAmount
        self.billType = billType
    }
    
     func display(){
        print("Bill ID: \(billId)")
        print("Bill Date: \(billDate)")
        print("Bill Type: \(billType)")
        print("Bill Amount: \(billAmount.currencyFormat())")
    }
    
}
