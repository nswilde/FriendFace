//
//  User.swift
//  FriendFace
//
//  Created by Nikki Wilde on 29/09/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [Friend]
    
    static let example = User(id: UUID(), isActive: true, name: "Paul Hudson", age: 35, company: "Hudson heavy industries", email: "Paul@hackingwithswift.com", address: "123 swift lane", about: "Cool dude", registered: Date.now, tags: ["Coder", "Teacher"], friends: [])
}

