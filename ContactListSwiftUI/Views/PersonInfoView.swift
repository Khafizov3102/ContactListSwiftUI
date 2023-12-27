//
//  PersonInfoView.swift
//  ContactListSwiftUI
//
//  Created by Денис Хафизов on 27.12.2023.
//

import SwiftUI

struct PersonInfoView: View {
    let person: Person
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.bottom, 20)
            
            Label(person.phoneNumber, systemImage: "phone.fill")
            Label(person.email, systemImage: "tray.fill")
            
            Spacer()
        }
        .navigationTitle(person.fullName)
    }
}

//#Preview {
//    PersonInfoView()
//}
