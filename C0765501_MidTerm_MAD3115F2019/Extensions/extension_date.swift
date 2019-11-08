//
//  extension_date.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
extension Date
{
    public func getForamttedDate() -> String
    {
        
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-mm-yyyy"
        // in the format "Thursday, 20 june, 2019
        var formattedDate = dateFormatter.string(from: self)
        return formattedDate
    }
}
