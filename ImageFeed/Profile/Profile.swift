//
//  Profile.swift
//  ImageFeed
//
//  Created by Bakhadir on 26.02.2024.
//

import Foundation

struct Profile {
    let username: String
    let firstName: String
    let lastName: String?
    var name: String {
        return "\(firstName) \(lastName ?? "")"
    }
    var loginName: String {
        return "@\(self.username)"
    }
    let bio: String?
}



