//
//  SecondPersonsView.swift
//  ContactListSwiftUI
//
//  Created by Денис Хафизов on 27.12.2023.
//

import SwiftUI

struct SecondPersonsView: View {
    @State private var selectedSegment = 0
    
    let personsList: [Person]
    
    var body: some View {
        NavigationStack {
            List(personsList) { person in
                Section {
                    Label(person.phoneNumber, systemImage: "phone.fill")
                    Label(person.email, systemImage: "tray.fill")
                    
                } header: {
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact list")
        }
    }
    
}

//#Preview {
//    SecondPersonsView()
//}
