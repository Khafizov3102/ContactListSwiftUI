//
//  PersonRowView.swift
//  ContactListSwiftUI
//
//  Created by Денис Хафизов on 27.12.2023.
//

import SwiftUI

struct PersonRowView: View {
    @State private var isPresented = false
    let person: Person
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                PersonInfoView(person: person)
            } label: {
                Text(person.fullName)
            }
        }
    }
}

//#Preview {
//    PersonRowView()
//}
