//
//  DescriptionContact.swift
//  Contact(SwiftUI)HW.3.5
//
//  Created by  Sergey Yurtaev on 20.07.2022.
//

import SwiftUI

struct DescriptionContact: View {
    
    let person: Person
    
    var body: some View {
        Form { // данный тип позволяет задавать статичные строки для табличного представления (все что в нем помещено будет отражено в строках)
            HStack {
                Spacer()
                Image(systemName: SystemImages.avatar.rawValue)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            RowView(image: SystemImages.phone.rawValue, contact: person.phone)
            RowView(image: SystemImages.email.rawValue, contact: person.email)
        }
        .navigationTitle(Text(person.fullName))
    }
}

struct DescriptionContact_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionContact(person: Person.getInfoPerson()[0])
    }
}
