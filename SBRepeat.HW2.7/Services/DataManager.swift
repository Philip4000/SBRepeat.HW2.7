//
//  DataManager.swift
//  SBRepeat.HW2.7
//
//  Created by Philip Noskov on 15.03.2022.
//

import Foundation


class DataManager {
    
    static let shared = DataManager()
    
    let names = [
                "Sam",
                "Tom",
                "Lukas",
                "Martin",
                "James",
                "Phil",
                "Ralf",
                "Tim",
                "Moris",
                "Walt"
            ]
    
    let surnames = [
                "Cook",
                "Levise",
                "Garrix",
                "Oakenfold",
                "Guetta",
                "Jons",
                "Obama",
                "Jobs",
                "Ritchi",
                "Disney"
            ]
    
    let emails = [
                "111@bk.com",
                "222@bk.com",
                "333@bk.com",
                "444@bk.com",
                "555@bk.com",
                "666@bk.com",
                "777@bk.com",
                "888@bk.com",
                "999@bk.com",
                "000@bk.com"
            ]
    
    let phones = [
                "+71111111111",
                "+72222222222",
                "+73333333333",
                "+74444444444",
                "+75555555555",
                "+76666666666",
                "+77777777777",
                "+78888888888",
                "+79999999999",
                "+70000000000"
            ]
    
    private init() {}
    
}
