//
//  ProfileImageResponceModel.swift
//  ImageFeed
//
//  Created by Bakhadir on 17.01.2024.
//

import Foundation

struct UserResult: Codable {
    let profileImage: ProfileImage
    
    enum CodingKeys: String, CodingKey {
        case profileImage = "profile_image"
    }
    
    struct ProfileImage: Codable {
        let small: String?
    }
}
