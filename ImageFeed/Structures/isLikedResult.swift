//
//  isLikedResult.swift
//  ImageFeed
//
//  Created by Bakhadir on 20.02.2024.
//

import Foundation

struct isLikedResult: Decodable {
    let photo: photo
    
    enum CodingKeys: String, CodingKey {
        case photo
    }
    
    struct photo: Codable {
        let isLiked: Bool
        
        enum CodingKeys: String, CodingKey {
            case isLiked = "liked_by_user"
        }
    }
}

