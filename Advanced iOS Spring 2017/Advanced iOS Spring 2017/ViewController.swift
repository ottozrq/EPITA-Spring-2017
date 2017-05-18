//
//  ViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Suiz Uzcategui on 19/04/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

// Otto's another comment

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityLebal: UILabel!
    
    @IBOutlet weak var tempLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let weather = Weather(city: "paris", temp: 12, pic: nil);
        cityLebal.text = weather?.city
        if let temp = weather?.temp {
            tempLabel.text = String(describing: temp)
        }
        //let weather = WeatherFetch()
        //weather.getWeather(city: "paris")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

