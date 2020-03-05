//
//  DataStorage.swift
//  TableView
//
//  Created by Avani Patel on 3/5/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import Foundation
class DataStorage
{
    private static let instance = DataStorage()
    private lazy var countryList: [Country] = []
    
    private init(){}
    
    static func getInstance() -> DataStorage
    {
        return instance
    }
    
    func addCountry(country: Country)
    {
        self.countryList.append(country)
    }
    func  getAllCountries() -> [Country] {
        return self.countryList
    }
    func loadData()
    {
        countryList.append(Country(name: "Afghanistan", capital: "Kabul", flag: #imageLiteral(resourceName: "af")))
        countryList.append(Country(name: "India", capital: "New Delhi", flag: #imageLiteral(resourceName: "in")))
        countryList.append(Country(name: "Canada", capital: "Toronto", flag: #imageLiteral(resourceName: "ca")))
        countryList.append(Country(name: "Nepal", capital: "Kathmandu", flag: #imageLiteral(resourceName: "np")))
    }
}
