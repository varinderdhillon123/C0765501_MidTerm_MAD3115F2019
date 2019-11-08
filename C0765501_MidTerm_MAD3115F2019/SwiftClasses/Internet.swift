//
//  Internet.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Internet : Bill
{
    var providerName : String
    var internetGBused : Float
    let internetRate : Float = 10
    
    override init()
    {
        self.providerName = ""
        self.internetGBused = 0
        super.init()
    }
    
    init(billId: Int, billDate: Date, billType: BillType,providerName : String,internetGBused : Float)
    {
        self.providerName = providerName
        self.internetGBused = internetGBused
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: 0)
    }
    override init(billId : Int,billDate : Date,billType : BillType,totalBillAmount : Float) {
        //Bill.BILL_ID_COUNT += 1
        //self.billId = Bill.BILL_ID_COUNT
        self.providerName = ""
        self.internetGBused = 0
       super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: 0)
    }
    
    init(obj : Internet)
    {
        //Bill.BILL_ID_COUNT += 1
        //self.billId = Bill.BILL_ID_COUNT
        self.providerName = obj.providerName
        self.internetGBused = obj.internetGBused
        super.init(billId: obj.billId, billDate: obj.billDate, billType: obj.billType, totalBillAmount: obj.calculateTotal())
    }
    
    override func calculateTotal()->Float
    {
        var total : Float = 0
        total = self.internetGBused * self.internetRate
        self.totalBillAmount = total
        return total
    }
    
    override func display()
    {
        print("Bill id : ",self.billId)
        print("Bill Date : ",self.billDate.getForamttedDate())
        print("Bill Type : ",self.billType)
        print("Bill Amount : ",self.totalBillAmount.currency())
        print("Provider Name : ",self.providerName)
        print("Internet Usage : ",self.internetGBused.formatGb())
    }
}
