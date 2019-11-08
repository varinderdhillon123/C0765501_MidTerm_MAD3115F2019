//
//  Hydro.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Hydro : Bill
{
    public var agencyName : String
    public var unitConsumed : Float
    let unitRate : Float = 10
    
    override init()
    {
        self.agencyName = ""
        self.unitConsumed = 0
        super.init()
    }
    init(obj : Hydro)
    {
        self.agencyName = obj.agencyName
        self.unitConsumed = obj.unitConsumed
        super.init(billId: obj.billId, billDate: obj.billDate, billType: obj.billType,totalBillAmount: obj.calculateTotal())
        
    }
    init(billId: Int, billDate: Date, billType: BillType,agencyName : String,unitConsumed : Float )
    {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        super.init(billId: billId, billDate: billDate, billType: billType,totalBillAmount: 0)
    }
    
    override init(billId : Int,billDate : Date,billType : BillType,totalBillAmount : Float) {
        //Bill.BILL_ID_COUNT += 1
        //self.billId = Bill.BILL_ID_COUNT
        self.agencyName = ""
        self.unitConsumed = 0
        super.init(billId: billId, billDate: billDate, billType: billType,totalBillAmount: 0)
    }
    override func calculateTotal()->Float
    {
        var total : Float = 0
        total = self.unitConsumed * self.unitRate
        self.totalBillAmount = total
        return total
    }
    
    override func display()
    {
        print("Bill id : ",self.billId)
        print("Bill Date : ",self.billDate.getForamttedDate())
        print("Bill Type : ",self.billType)
        print("Bill Amount : ",self.totalBillAmount.currency())
        print("Agency Name : ",self.agencyName)
        print("Unit Consumed : ",self.unitConsumed.formatUnits())
    }
}
