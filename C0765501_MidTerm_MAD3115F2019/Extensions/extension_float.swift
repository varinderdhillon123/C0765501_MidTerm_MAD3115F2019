//
//  extension_float.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by Simranjit Singh Johal on 2019-11-08.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
extension Float
{
    public func currency() -> String
    {
        return String(format: "$%0.2f", self)
    }
    public func formatUnits() -> String
    {
        return String(format : "%0.0f units", self)
    }
    public func formatGb() -> String
    {
        return String(format : "%0.0f GB", self)
    }
}
