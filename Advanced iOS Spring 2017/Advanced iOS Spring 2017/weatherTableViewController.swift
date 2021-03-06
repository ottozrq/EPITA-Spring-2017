//
//  weatherTableViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by 张若秋 on 2017/5/17.
//  Copyright © 2017年 ___AdvancediOS___. All rights reserved.
//

import UIKit

class weatherTableViewController: UITableViewController {
    
    var weatherArray = [Weather]();
    
    @IBAction func unwindToWeatherList(sender: UIStoryboardSegue){
        if let sourceViewController = sender.source as? newViewController,
        let weather = sourceViewController.weather{
        let newIndexPath = IndexPath(row: weatherArray.count, section: 0)
        weatherArray.append(weather)
        tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "ng")!)
        let bgimg = UIImageView(image: UIImage(named: "ng"))
        self.tableView.backgroundView = bgimg

        weatherArray.append(Weather(city: "Paris", temp: 5, pic: UIImage(named: "1"))!);
        weatherArray.append(Weather(city: "shanghai", temp: 28, pic: UIImage(named: "2"))!);
        weatherArray.append(Weather(city: "london", temp: -1, pic: UIImage(named: "3"))!);

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weatherArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath) as? weatherTableViewCell else {
            fatalError("error")
        }
        
        cell.cityLabel?.text = weatherArray[indexPath.row].city
        cell.tempLabel?.text = String(weatherArray[indexPath.row].temp)
        cell.weatherImg.image = weatherArray[indexPath.row].pic

        // Configure the cell...

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
