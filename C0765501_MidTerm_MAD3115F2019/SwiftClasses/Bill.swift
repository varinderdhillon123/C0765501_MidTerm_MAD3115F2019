//
//  Bill.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Bill : IDisplay
{
    //static var BILL_ID_COUNT = 0
    func display()
    {
        print("Bill id : ",self.billId)
        print("Bill Date : ",self.billDate.getForamttedDate())
        print("Bill Type : ",self.billType)
        print("Bill Amount : ",self.totalBillAmount.currency())
    }
    
    var billId : Int
    var billDate : Date
    var billType : BillType
    public var totalBillAmount : Float
    
    init()
    {
        //Bill.BILL_ID_COUNT += 1
        //self.billId = Bill.BILL_ID_COUNT
        self.billId = 0
        self.billDate = Date()
        self.billType = BillType.None
        self.totalBillAmount = 0
    }
    init(billId : Int,billDate : Date,billType : BillType,totalBillAmount : Float) {
        //Bill.BILL_ID_COUNT += 1
        //self.billId = Bill.BILL_ID_COUNT
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
    
    func calculateTotal()->Float
    {
        var total : Float = 0
        self.totalBillAmount = total
        return total
    }
    
}
