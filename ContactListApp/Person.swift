//
//  Person.swift
//  ContactListApp
//
//  Created by Viktor Smirnov on 27.10.2023.
//

import Foundation

struct Person {
    let firstName: String
    let surname: String
    let email: String
    let teleNumber: String
    
    
    static func getPerson() -> [Person] {
        let data = DataStore.data
        
        let uniqueNames = Array(Set(data.names))
        let uniqueSurname = Array(Set(data.surnames))
        let uniqueEmails = Array(Set(data.emails))
        let uniquePhoneNumbers = Array(Set(data.teleNumbers))
        
        var contacts: [Person] = []
   
        for index in 0..<data.names.count {
            contacts.append(Person(
                firstName: uniqueNames[index],
                surname: uniqueSurname[index],
                email: uniqueEmails[index],
                teleNumber: uniquePhoneNumbers[index])
            )
        }
        return contacts
        
    }
}
