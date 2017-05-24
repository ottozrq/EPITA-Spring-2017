
//
//  weatherTableViewCell.swift
//  Advanced iOS Spring 2017
//
//  Created by 张若秋 on 2017/5/24.
//  Copyright © 2017年 ___AdvancediOS___. All rights reserved.
//

import UIKit

class weatherTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var tempLabel: UILabel!
    
    @IBOutlet weak var weatherImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
