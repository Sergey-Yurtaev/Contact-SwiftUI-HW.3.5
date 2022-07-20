//
//  RowView.swift
//  Contact(SwiftUI)HW.3.5
//
//  Created by  Sergey Yurtaev on 20.07.2022.
//

import SwiftUI

struct RowView: View {
    let image: String
    let contact: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(contact)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(image: SystemImages.email.rawValue, contact: Person.getInfoPerson()[0].email)
    }
}
