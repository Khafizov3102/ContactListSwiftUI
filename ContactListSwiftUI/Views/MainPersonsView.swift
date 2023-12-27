//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Денис Хафизов on 27.12.2023.
//

import SwiftUI

struct MainPersonsView: View {
    let personsList: [Person]
    var body: some View {
        NavigationStack {
            List(personsList) { person in
                PersonRowView(person: person)
            }
            .listStyle(.plain)
            .navigationTitle("Contact list")
        }
    }
    
}

//#Preview {
//    ContentView()
//}
