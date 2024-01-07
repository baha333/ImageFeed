//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by Bakhadir on 03.01.2024.
//

import Foundation

final class OAuth2TokenStorage {
    private let userDefaults = UserDefaults.standard
    
    private enum Keys: String {
        case accessToken
    }
    
    var token: String? {
    get {
        userDefaults.string(forKey: Keys.accessToken.rawValue)
    }
    set {
        userDefaults.set(newValue, forKey: Keys.accessToken.rawValue)
    }
}
}
