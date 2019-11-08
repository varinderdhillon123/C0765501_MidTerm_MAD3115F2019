//
//  BillType.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
enum BillType : String
{
    case Mobile = "Mobile"
    case Internet = "Internet"
    case Hydro = "Hydro"
    case None = "None"
    static let allValues = ["Mobile","Internet","Hydro"]
}
