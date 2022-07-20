//
//  ContentView.swift
//  Contact(SwiftUI)HW.3.5
//
//  Created by  Sergey Yurtaev on 19.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getInfoPerson()
    
    var body: some View {
            ZStack {
                TabView {
                    ContactList(contacts: contacts)
                        .tabItem {
                            Image(systemName: SystemImages.contacts.rawValue)
                            Text("Contact")
                        }
                    ContactSection(contacts: contacts)
                        .tabItem {
                            Image(systemName: SystemImages.phone.rawValue)
                            Text("Sections")
                        }
                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
