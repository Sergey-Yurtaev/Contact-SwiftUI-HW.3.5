//
//  ContactMain.swift
//  Contact(SwiftUI)HW.3.5
//
//  Created by  Sergey Yurtaev on 20.07.2022.
//

import SwiftUI

struct ContactList: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { person in
                NavigationLink(destination: DescriptionContact(person: person)) {
                    Text("\(person.fullName)")
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactMain_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: Person.getInfoPerson())
    }
}

