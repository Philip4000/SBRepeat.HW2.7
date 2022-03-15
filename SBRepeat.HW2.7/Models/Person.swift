//
//  Person.swift
//  SBRepeat.HW2.7
//
//  Created by Philip Noskov on 15.03.2022.
//

import Foundation

struct Person {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullyName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    
    private func getPersonList() -> [Person] {
        
        var personList: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        let minIteractions = min(names.count, surnames.count, phones.count, emails.count)
        
        for index in 0..<minIteractions {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            
            personList.append(person)
        }
        
        return personList
        
    }
    
}
