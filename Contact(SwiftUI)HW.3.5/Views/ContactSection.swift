//
//  ContactSection.swift
//  Contact(SwiftUI)HW.3.5
//
//  Created by  Sergey Yurtaev on 20.07.2022.
//

import SwiftUI

struct ContactSection: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts) { contact in
                    Section(header: Text(contact.fullName)
                        .foregroundColor(.blue)
                        .font(.callout)
                    ) {
                        RowView(
                            image: SystemImages.phone.rawValue,
                            contact: contact.phone)
                        RowView(
                            image: SystemImages.email.rawValue,
                            contact: contact.email)
                    }
                }
            }
            .navigationBarTitle("Contact")
        }
    }
}

struct ContactSection_Previews: PreviewProvider {
    static var previews: some View {
        ContactSection(contacts: Person.getInfoPerson())
    }
}
