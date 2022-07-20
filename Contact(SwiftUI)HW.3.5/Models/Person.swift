//
//  Person.swift
//  Contact(SwiftUI)HW.3.5
//
//  Created by  Sergey Yurtaev on 19.07.2022.
//

import Foundation

struct Person: Identifiable {
    var id: Int
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    
    static func getInfoPerson() -> [Person] {
        
        var persons: [Person] = []
        
        let names = StorageManager.shared.names.shuffled()
        let surnames = StorageManager.shared.surnames.shuffled()
        let emails = StorageManager.shared.emails.shuffled()
        let phones = StorageManager.shared.phones.shuffled()
        
        for index in 0..<names.count {
            persons.append(Person(id: index,
                                  name: names[index],
                                  surname: surnames[index],
                                  email: emails[index],
                                  phone: phones[index]))
        }
        return persons
    }
}

enum SystemImages: String {
    case phone = "phone"
    case email = "tray"
    case avatar = "person.fill"
    case contacts = "person.3"
}
