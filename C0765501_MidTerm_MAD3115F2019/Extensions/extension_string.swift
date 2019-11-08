//
//  extension_string.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
extension String
{
    func countryCode(countryType:CountryType) -> String
    {
        if(countryType == CountryType.Canada)
        {
            return "+1\(self)"
        }
        else
        {
            return "+91\(self)"
        }
    }
    // For Email Valid
    public func isValidEmail() -> Bool
    {
        let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", regex)
        return emailTest.evaluate(with: self)
    }}
