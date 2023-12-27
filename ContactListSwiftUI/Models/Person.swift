//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Денис Хафизов on 27.12.2023.
//

import Foundation

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        let dataStore = DataStore.shared
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phones = dataStore.phones.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let minCount = min(
            names.count,
            surnames.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<minCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
