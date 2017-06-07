//
//  newViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by 张若秋 on 2017/6/1.
//  Copyright © 2017年 ___AdvancediOS___. All rights reserved.
//

import UIKit
import os.log

class newViewController: UIViewController {
    
    var weather: Weather?
    
    @IBOutlet weak var cityText: UITextField!
    @IBOutlet weak var tempText: UITextField!
    @IBOutlet weak var bgimg: UIImageView!
    
    @IBAction func cancelBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var saveBtn: UIBarButtonItem!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let button = sender as? UIBarButtonItem, button === saveBtn else {
            os_log("fail", log: OSLog.default, type: .debug)
            return
        }
        let city = cityText.text
        let temp = Int(tempText.text!)
        let imgname = String(arc4random() % 3 + 1)
        weather = Weather(city: city!, temp: temp!, pic: UIImage(named: imgname))
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bgimg.image = UIImage(named: "ng")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
