//
//  MainView.swift
//  ContactListSwiftUI
//
//  Created by Денис Хафизов on 27.12.2023.
//

import SwiftUI

struct MainView: View {
    let personsList = Person.getContactList()
    var body: some View {
        TabView {
            MainPersonsView(personsList: personsList)
                .tabItem {
                    Label("Contacts", systemImage: "person.2.fill")
                }
            SecondPersonsView(personsList: personsList)
                .tabItem {
                    Label("Numbers", systemImage: "phone.fill")
                }
        }
    }
}

#Preview {
    MainView()
}
