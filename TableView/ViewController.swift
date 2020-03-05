//
//  ViewController.swift
//  TableView
//
//  Created by Avani Patel on 3/4/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblCountry: UITableView!
    var countryNames:[Country] = []
//        ["India", "Canada", "USA", "UK", "China", "Nepal", "Sri Lanka", "Russia", "Pakistan", "Bhutan", "France", "Kenya", "Mexico", "Turkey", "Afghanistan", "Bangladesh"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //loadCountries()
        countryNames = DataStorage.getInstance().getAllCountries()
    }
    
    func loadCountries()
    {
        countryNames.append(Country(name: "Afghanistan", capital: "Kabul", flag: #imageLiteral(resourceName: "af")))
        countryNames.append(Country(name: "India", capital: "New Delhi", flag: #imageLiteral(resourceName: "in")))
        countryNames.append(Country(name: "Canada", capital: "Toronto", flag: #imageLiteral(resourceName: "ca")))
        countryNames.append(Country(name: "Nepal", capital: "Kathmandu", flag: #imageLiteral(resourceName: "np")))
        
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell")
        
        let country = countryNames[indexPath.row]
        cell?.textLabel?.text = country.name
        cell?.detailTextLabel?.text = country.capital
        cell?.imageView?.image = country.flag
        return cell!
    }
}
