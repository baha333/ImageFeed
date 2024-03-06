//
//  ProfileServiceModel.swift
//  ImageFeed
//
//  Created by Bakhadir on 02.02.2024.
//

import Foundation

struct ProfileResult: Decodable {
    let username: String
    let firstName: String
    let lastName: String?
    let bio: String?
}
