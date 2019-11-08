//
//  BillTableViewCell.swift
//  C0765501_MidTerm_MAD3115F2019
//
//  Created by MacStudent on 2019-10-31.
//  Copyright © 2019 MacStudent. All rights reserved.
//


import UIKit

class BillTableViewCell: UITableViewCell
{
    @IBOutlet weak var lblAgencyName: UILabel!
    
    @IBOutlet weak var lblminuteused: UILabel!
    @IBOutlet weak var lblgbused: UILabel!
    @IBOutlet weak var lblmobilenumber: UILabel!
    @IBOutlet weak var lblmodelnumber: UILabel!
    @IBOutlet weak var lblunitused: UILabel!
    @IBOutlet weak var lblPay: UILabel!
    @IBOutlet weak var lblType: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblBillId: UILabel!
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
