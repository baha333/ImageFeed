//
//  ProfileServiceModel.swift
//  ImageFeed
//
//  Created by Bakhadir on 02.02.2024.
//

import Foundation

struct Profile {
    let username: String
    let name: String
    let loginName: String
    let bio: String?
    
    init(result: ProfileResult) {
        self.username = result.username ?? ""
        self.name = [result.firstName, result.lastName].compactMap { $0 }.joined(separator: " ")
        self.loginName = "@" + (result.username ?? "")
        self.bio = result.bio
    }
}

struct ProfileResult: Decodable {
    let username: String?
    let firstName: String?
    let lastName: String?
    let bio: String?
}
