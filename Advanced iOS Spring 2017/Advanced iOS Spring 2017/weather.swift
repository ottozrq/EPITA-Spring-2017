//
//  weather.swift
//  Advanced iOS Spring 2017
//
//  Created by 张若秋 on 2017/5/17.
//  Copyright © 2017年 ___AdvancediOS___. All rights reserved.
//

import Foundation
import UIKit

class Weather{
    var city: String = ""
    var temp: Int = 0
    var pic: UIImage?
    
    init?(city: String, temp: Int, pic: UIImage?) {
        self.city = city;
        self.temp = temp;
        self.pic = pic;
        if city.isEmpty {
            return nil
        }
    }
}
