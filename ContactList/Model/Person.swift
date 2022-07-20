//
//  Person.swift
//  ContactList
//
//  Created by user on 20.07.2022.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phoneNumber: String
    
    static func getPerson() -> [Person] {
        var personList: [Person] = []
        let dataStore = DataStore()
        
        for _ in 0...dataStore.firstNames.count - 1 {
            let person = Person(
                firstName: dataStore.firstNames.remove(at: Int.random(in: 0...dataStore.firstNames.count - 1)),
                lastName: dataStore.lastNames.remove(at: Int.random(in: 0...dataStore.lastNames.count - 1)),
                email: dataStore.emails.remove(at: Int.random(in: 0...dataStore.emails.count - 1)),
                phoneNumber: dataStore.phones.remove(at: Int.random(in: 0...dataStore.phones.count - 1))
            )
            
            personList.append(person)
            
        }
        
        return personList
    }
}
