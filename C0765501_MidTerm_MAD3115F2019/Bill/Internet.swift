//
//  Internet.swift
//  C0766112_F2019_MID_TERM_MAD3004
//
//  Created by MacStudent on 2019-10-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Internet: Bill{
    
      var providerName: String
      var internetUsed: Int
     init(billId: Int, billDate: String, billType: TypeofBills, billAmount: Float, providerName: String,internetUsed: Int )
    {
        
    
        self.providerName = providerName
        self.internetUsed = internetUsed
        super.init(billId: billId, billDate: billDate, billType: billType, billAmount: billAmount)
    }
    
    override func display() {
        super.display()
        print("Provider Name: \(providerName)")
        print("Internet Used: \(internetUsed.conactGB())")
    }
    
}
