//
//  FriendView.swift
//  FriendFace
//
//  Created by Nikki Wilde on 30/09/23.
//

import SwiftUI

struct UserView: View {
    let user: CachedUser
    
    var body: some View {
        List {
            Section {
                Text(user.wrappedAbout)
                    .padding(.vertical)
            } header: {
                Text("About")
            }
            
            Section {
                Text("Address: \(user.wrappedAddress)")
                Text("Company: \(user.wrappedCompany)")
            } header: {
                    Text("Contact Details")
            }
                     
            Section {
                ForEach(user.friendsArray) { friend in
                Text(friend.wrappedName)
                }
            } header: {
                Text("Friends")
            }
        }
        .listStyle(.grouped)
        .navigationTitle(user.wrappedName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
  //  UserView(user: User.example)
//}

