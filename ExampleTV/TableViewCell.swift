//
//  TableViewCell.swift
//  ExampleTV
//
//  Created by Joe on 13/04/20.
//  Copyright © 2020 jess. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var CellForData: UIView!
    @IBOutlet weak var LabelForData: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
