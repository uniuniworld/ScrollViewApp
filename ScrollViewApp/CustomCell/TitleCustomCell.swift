//
//  TitleCustomCell.swift
//  ScrollViewApp
//
//  Created by t_kirifu on 2020/10/29.
//  Copyright © 2020 Takahiro Kirifu. All rights reserved.
//

import UIKit

class TitleCustomCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        label.numberOfLines = 0
        label.lineBreakMode = .byCharWrapping
        
        label.backgroundColor = .red
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
