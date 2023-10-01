//
//  FriendFaceApp.swift
//  FriendFace
//
//  Created by Nikki Wilde on 29/09/23.
//

import SwiftUI

@main
struct FriendFaceApp: App {
    @StateObject var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
