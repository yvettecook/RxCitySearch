//
//  ViewController.swift
//  RxCitySearch
//
//  Created by Yvette Cook on 05/04/2016.
//  Copyright © 2016 RxExamples. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var shownCities = [String]()
    let allCities = ["New York", "London", "Oslo", "Warsaw", "Berlin", "Praga"]
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shownCities.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CityPrototypeCell", forIndexPath: indexPath)
        cell.textLabel?.text = shownCities[indexPath.row]
        return cell
    }
    
    

}

